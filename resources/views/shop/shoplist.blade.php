@extends('components.headerFooter')
@section('title')
购物清单
@endsection

<link rel='stylesheet' href='/assets/css/shoplist.css'>
@section('content')
<!-- 头部 -->
<div class='header'>
    <div class='container d-flex justify-content-between py-5'>
        <h1>Product Cart</h1>
        <p>Home <i>/</i> Shop<i>/</i><span>Product Cart</span></p>
    </div>
</div>
<!-- 购物车 -->
<div class='container py-5 cart'>
    <div class='row'>
        <div class='col-md-8'>
            <table class='cart-table table'>
                <thead>
                    <tr>
                        <th scope='col'>产品</th>
                        <th scope='col'>单价</th>
                        <th scope='col'>数量</th>
                        <th scope='col'>小计</th>
                    </tr>
                </thead>
                <tbody>
                    @if($data != null)
                    @foreach($data as $row)
                        @if(!empty($row['id']))
                    <tr >
                        <td>
                            <div class='cart-thumb media align-items-center'>
                                <a href='#'>
                                    <img class='img-fluid' src='{{$row["src"]}}' alt=''>
                                </a>
                                <div class='media-body ml-3'>
                                    <div class='product-title mb-2'><a class='link-title' href='#'>{{$row['title']}}</a>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class='align-middle'> <span class='product-price text-muted'>${{$row['price']}}</span>
                        </td>
                        <td class='align-middle'>
                            <div class='d-flex align-items-center' data-id="{{$row['id']}}">
                                <button class='btn-product btn-product-up'> -</i>
                                </button>
                                <input disabled="" class='form-product' type='number' name='form-product' value='{{$row["num"]}}'>
                                <button class='btn-product btn-product-down'> +</i>
                                </button>
                            </div>
                        </td>
                        <td class='align-middle p-0 m-0'>
                            <div class='d-flex justify-content-between'>
                                <span class='product-price text-dark font-w-6'>${{$row['price']*$row['num']}}</span>
                                <a href='#' class='close-link'><i class='iconfont icon-guanbi'></i></a>
                            </div>
                        </td>
                    </tr>
                        @endif
                     @endforeach
                     @endif
                </tbody>
            </table>
        </div>
        <div class='col-md-4'>
            <form class='box' action='/settlement' method="post">
                <h4 class='mb-3'>购物总数</h4>
                {{csrf_field()}}
                <div class='d-flex justify-content-between py-3'>
                    <span class='textleft
'>小计</span><input type='text' value='￥{{$data[0]["total"] | 0 }}' class='textright'>
                </div>
                <div class='d-flex justify-content-between py-3'>
                    <span class='textleft
                '>数量</span><input name="sum" type='text' value='x{{$data[0]["sum"] | 0}}' class='textright'>
                </div>
                <div class='d-flex justify-content-between py-3 tatal-box'>
                    <span class='total
                '>总价</span><input type='text' value='￥{{$data[0]["total"] | 0}}' name="total" class='textright totalright'>
                </div>
                <div class='d-flex justify-content-center'>
                    <input class='btn' type='submit' value='结算'>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function() {
        //减法
        $('.btn-product-up').on('click', function() {
            let id = $(this).parent('div').attr('data-id');
            // console.log(id);
            window.location.href=`/addcart?id=${id}&is=less`;
        });
        //加法
        $('.btn-product-down').on('click', function() {
            let id = $(this).parent('div').attr('data-id');
            window.location.href=`/addcart?id=${id}`;
        });
    });
</script>
@endsection
