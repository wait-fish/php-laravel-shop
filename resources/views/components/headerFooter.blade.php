<!DOCTYPE html>
<html>
	<head>
		<meta charset='utf-8'>
        <meta name='viewport' content='width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no' />
		<title>@yield('title', 'index')</title>
        <link rel='stylesheet' href='/assets/css/animate.css'>
        <link rel='stylesheet' href='/assets/css/bootstrap.min.css'>
        <link rel='stylesheet' href='/assets/fonts/iconfont.css'>
        <link rel='stylesheet' href='/assets/css/headerFooter.css'>
        <!-- js -->
        <script src='/assets/js/jquery-3.5.1.min.js' type='text/javascript' charset='utf-8'></script>
        <script src='/assets/js/bootstrap.bundle.min.js'></script>
        <script src='/assets/js/headerFooter.js' type='text/javascript' charset='utf-8'></script>
	</head>
	<body>
		<!-- 返回顶部 -->
		<div class='fish_top'>
			<span class='iconfont icon-shang-'></span>
		</div>
        <!-- 头部区域 -->
        <header>
            <div class='container py-2'>
                <div class='row'>
                    <div class='col-8'>
                        <p class='m-0'>等鱼的PHP.blade期末作业</p>
                    </div>
                    <div class='col-4 text-center'>
                        @php
                        $islogin = SESSION('token');
                       if (!$islogin)  {
                           echo "<a href='/login'>登录/注册</a>";
                       } else {
                           $username = SESSION('username');
                           echo "<a href='/outlogin'>你好，{$username}！退出</a>";
                       }
                        @endphp
                    </div>
                </div>
            </div>
        </header>
        <!-- 导航栏 -->
        <nav class='bg-light' >
            <div class='container py-2 '>
                <nav class='navbar navbar-expand-lg navbar-light bg-light'>
                  <a class='navbar-brand' href='#'>
                      <img src='/assets/images/logo.png' alt=''>
                  </a>
                  <button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarSupportedContent' aria-controls='navbarSupportedContent' aria-expanded='false' aria-label='Toggle navigation'>
                    <span class='navbar-toggler-icon'></span>
                  </button>

                  <div class='collapse navbar-collapse' id='navbarSupportedContent'>
                    <ul class='navbar-nav ml-5 pl-5' id="mynav">
                        @php
                        //修改选中的代码
                        $h = '';
                        if (isset($_GET['active'])) {
                            $h = $_GET['active'];
                        }
                        function myFind($index) {
                            (int)$index = $index==''?'0':$index;
                            echo "
                            <script>
                                $(function() {
$('#mynav li').eq($index).addClass('active');
                                })
                            </script>";
                        }
                        myFind($h);
                        @endphp

                        <li class='nav-item'>
                          <a class='nav-link' href='/'>首页</a>
                        </li>
                        <li class='nav-item'>
                          <a class='nav-link' href='/shop?active=1'>商店</a>
                        </li>
                        <li class='nav-item'>
                          <a class='nav-link' href='/shoplist?active=2'>购物清单</a>
                        </li>
                        <li class='nav-item'>
                          <a class='nav-link' href='/order?active=3'>订单</a>
                        </li>
                  </div>
                  <!-- 右侧图标 -->
                  <div class='my-icons mr-5 '>
                      <a href='#'><span class='iconfont icon-sousuo'></span></a>
                      <a href='/order?active=3'><span class='iconfont icon-denglu'></span></a>
                      <a href='#'><span class='iconfont icon-shoucang'></span></a>
                      @php
                      $islogin = SESSION('token');
                      if ($islogin) {
                          //使用php输出
                      @session_start();
                      $cart = isset($_SESSION['cart'])? $_SESSION['cart'] : [0];
                      $sum = $cart[0]['sum'] | 0;
                      $total = $cart[0]['total'] | 0;
                      } else {
                          $cart = [0];
                          $sum = 0;
                          $total = 0;
                      }

                      echo " <a href='#'><span class='iconfont icon-gouwudai'><span class='myCircle'>$sum</span></span></a>
                    <!-- 购物袋 -->
                    <div class='gouwudai'>
                        <div style='height: 230px; overflow: hidden;'>
                            ";//输出结束
                        for ($i = 0; $i<20;$i++) {
                            if (!empty($cart[$i]['id'])) {
                                echo "<div class='media'>
                                  <img src='{$cart[$i]['src']}' class='mr-3' alt='...'>
                                  <div class='media-body'>
                                    <p class='text my-0'>{$cart[$i]['title']}</p>
                                    <p class='price mt-0'>{$cart[$i]['num']}x￥{$cart[$i]['price']}</p>
                                  </div>
                                  <a href='/addcart?id={$cart[$i]['id']}&is=less'><span class='iconfont icon-guanbi'></span></a>
                        </div>";
                            }
                        }

                        //输出开始
                        echo "</div>
                        <div class='totoal-box'>
                            <p>小计：</p>
                            <p class='totoal'>￥$total</p>
                        </div>
                        <div class='totoal-button'>
                            <a href='shoplist?active=2'><button class='gocart'>查看购物车</button></a>
                            <a href='shoplist?active=2'><button class='gototal'>去结算</button></a>
                        </div>
                    </div>
                  </div>";//输出结束
                  @endphp
                  <div class='sreach-box'>
                        <form action='/sreach' method="post">
                            {{csrf_field()}}
                            <input name="sreach" type='text' placeholder='搜索'>
                            <input class="tj" style="position: absolute;right: 0;width: 50px!important;z-index: 3; background-color: transparent;" type="submit" value=" ">
                            <span style="position: absolute;right: 15px;top: 10px;z-index: 1;" class='iconfont icon-sousuo'></span>
                        </form>
                        <a href='#' class='iconfont icon-guanbi'></a>
                  </div>
                </nav>
            </div>
        </nav>
        <!-- 内容区域 -->
        <main>
            @yield('content')
        </main>
        <!-- 页脚 -->
        <footer>
            <div class='container pt-5'>
                <div class='row'>
                    <div class='col-sm-6 col-md-4 col-lg-3'>
                        <img src='/assets/images/footer-logo.png' class=' w-75 mb-3' alt=''>
                        <p>
PHP final assignments, some things used to make up the word count, which will make the typesetting look better, and the translation into English seems to be compelling.
</p>
                    </div>
                    <div class='col-sm-6 col-md-4 col-lg-3'>
                            <ul>
                                <li>个人信息</li>
                                <li>郑泽绵</li>
                                <li>1906030243</li>
                                <li>19计算机应用技术B班</li>
                            </ul>
                    </div>
                    <div class='col-sm-6 col-md-4 col-lg-3'>
                           <ul>
                               <li>选用技术</li>
                               <li>bootstrap</li>
                               <li>JQuery</li>
                               <li>laravel</li>
                           </ul> 
                    </div>
										
                </div>
                <p class='text-center pb-3 mb-0'>等鱼布局 | @2021</p>
            </div>
        </footer>
	</body>
</html>
