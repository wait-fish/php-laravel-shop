<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\shop;
use DB;
use Session;
use Carbon\Carbon;

class ShopController extends Controller
{
    //首页
    public function index() {
        //使用select查询的数据不能直接传递到页面
        //轮播查询
        $banner = DB::table('banner')->get();
        // dd($banner[0]);
        $shoplist = DB::table('shoplist')->get()->shuffle();
        // dd($shoplist);
        //随机打乱转数组
        $list1 = array_slice($shoplist->shuffle()->toArray(),5);
        $list2 = array_slice($shoplist->shuffle()->toArray(),5);
        $list3 = array_slice($shoplist->shuffle()->toArray(),5);
        // dd($list1);
        $banner2 = $shoplist->shuffle();
        // compact创建一个键值对数组
        return \view('shop.index', \compact(
        'banner','list1', 'list2', 'list3', 'banner2'
        ));
    }
    //商品页
    public function shop() {
        $data = shop::paginate(8);
        $data->page = false;
        return view('shop.shop', \compact('data'));
    }
    //商品
    public function shoplist() {
        if (!Session::get('token')) return redirect('/login');
        session_start();
        $data = isset($_SESSION['cart'])?$_SESSION['cart']: [0];
        // dd($data);
        return view('shop.shoplist', \compact('data'));
    }
    //登录页面
    public function login() {
        return view('shop.login');
    }
	//登录验证
	public function loginisok(Request $request) {
         $validatedData = $request->validate([
                'username' => 'required|max:20|min:4|alpha_num',
                'password' => 'required|max:16|min:6|alpha_num',
                'captcha' => 'required|captcha'
         ]);
         $isset = DB::table('users')->where('username', $validatedData['username'])->first();

         // dd($isset);
         //如果不存在账户则创建
         if ($isset==null) {
             //自制身份认证 - 用户名+fish+mytoken
             $token = md5($validatedData['username'].'fishmytoken');
             //插入到数据库
             $username = $validatedData['username'];
             $password = md5($validatedData['password']);

             DB::insert("insert into users(username, password,token)
             values (?,?,?)",[$username, $password, $token]);
             Session::put('token',$token);
             Session::put('username', $username);
         } else {
             //用户已经存在
             //如果用户名相等,密码是否正确
             if ($validatedData['username']== $isset->username && md5($validatedData['password']) != $isset->password) {
                 $validatedData = $request->validate([
                        'password' => 'password',
                 ]);
             }
            //如果存在则获取token写入Session
            Session::put('token', $isset->token);
            Session::put('username', $isset->username);
         }
         //重定向
         return redirect('/');
	}
    //退出登录
    public function outlogin() {
        Session::flush();
        return redirect('/');
    }
    //订单页面
    public function order() {
        //如果没有登录
		if (!Session::get('token')) return redirect('/login');
        $username = Session::get('username');
         $data = DB::table('dd')->where('username', $username)->get();
        return view('shop.order', \compact('data'));
    }

    //搜索页面
    public function sreach(Request $request) {
        $sreach = $request->get('sreach');
        $data = DB::table('shoplist')->where('title', 'like', "%{$sreach}%")->get();
        $data->page = true;
        // dd($data);
        return view('shop.shop', \compact('data'));
    }

    //加入购物车
    public function addcart(Request $request) {
        //session 可能只能写入一次，尝试删除再+
        // dd($request->get('is'));
        //如果么有登录
        if (!Session::get('token')) return redirect('/login');
        (int)$addId = $request->get('id');

        session_start();
        //判断是否存在Session,false不存在
        if (!isset($_SESSION['cart'])) $_SESSION['cart'] = range(1, 100);
        //拿出数据
        $cart = $_SESSION['cart'];
        //是否是空的
        if (!empty($_SESSION['cart'][$addId]['id'])) {
            //存在商品
            //再填充
            if ($request->get('is')=='less') {
                --$cart[$addId]['num'];
                $cart[$addId] = $cart[$addId]['num'] < 1 ? '' : $cart[$addId];
            } else {
                ++$cart[$addId]['num'];
            }

        } else {
			//不存在商品
           //拿到商品
           $shop = DB::table('shoplist')->where('id', $addId)->first();
           //包装
           $data = [
               "src" => $shop->src,
               "price" => $shop->dazhe,
               "title" => $shop->title,
               "id" => $shop->id,
               "num" => 1
           ];
           $cart[$addId] = $data;
        }
        //计算总价和数量
        $total = 0;
        $sum = 0;
        for($i=0;$i<100;$i++) {
             if (!empty($cart[$i]['id'])) {
                 $total += $cart[$i]['price'] * $cart[$i]['num'];;
                 $sum += $cart[$i]['num'];
             }
        }
        //再填充
        $cart[0] = ["total"=> $total, "sum"=>$sum];
        //再写回
        $_SESSION['cart'] = $cart;
        // dd($_SESSION['cart']);
        return back();
    }

    //结算
    public function settlement(Request $request) {
        //如果没有登录退回，为空则退回
        if (!Session::get('token')) return redirect('/login');
        if ($request->get('sum') == 'x0') return back();
        $sum = $request->get('sum');
        $total = $request->get('total');
        $username = Session::get('username');
        $time=Carbon::now()->toDateTimeString();
        $danhao = md5($username.Carbon::now()->getPreciseTimestamp(3).$sum.$total);
        //插入数据
        DB::insert("insert into dd(danhao, addtime, username)
        values (?,?,?)",[$danhao, $time, $username]);
        //插入成功后清空购物车
        //判断是否存在Session,false不存在
        session_start();
        $_SESSION['cart'] = range(1, 100);
        $data = DB::table('dd')->where('username', $username)->get();
        // dd($data[0]);
        // return view('shop.order', \compact('data'));
        return redirect('/order?active=3');
    }

    //删除订单
    public function delorder(Request $request) {
        // dd($request->get('order'));
        if (!Session::get('token')) return redirect('/login');
        $order = $request->get('order');
        $data = DB::table('dd')->where('danhao', $order)->delete();
        return redirect('/order?active?id=3');
    }

}
