@extends('components.headerFooter')
@section('title')
商店
@endsection

<link rel="stylesheet" href="/assets/css/shop.css">
@section('content')
<!-- 头部 -->
<div class="header">
    <div class="container d-flex justify-content-between py-5">
        <h1>Shop Grid No Sidebar</h1>
        <p>Home <i>/</i> Shop<i>/</i><span>Shop Grid No Sidebar</span></p>
    </div>
</div>
<div class="container">
    <div class="row">
        <!-- $data是数组 -->
        @foreach($data as $row)
        <div class="col-md-6 col-xl-3 col-lg-4 py-3">
            <div class="my-list">
                    <img class="img w-100" src="{{$row->src}}" alt="">
                    <img class="imgh w-100" src="{{$row->hsrc}}" alt="">
                <div class="my-box d-flex align-items-center justify-content-center flex-column">
                    <h6 class="mt-3">{{$row->title}}</h6>
                    <p class="mb-0">￥{{$row->yuanjia}} <span class="price">￥{{$row->dazhe}}</span></p>

                    <p>
                        <span class="iconfont icon-wujiaoxing"></span>
                        <span class="iconfont icon-wujiaoxing"></span>
                        <span class="iconfont icon-wujiaoxing"></span>
                        <span class="iconfont icon-wujiaoxing"></span>
                        <span class="iconfont icon-wujiaoxing"></span></p>
                    <a href="/addcart/?id={{$row->id}}"><button><span class="iconfont icon-gouwuche"></span>加入购物车</button></a>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <!-- 分页 -->
    @if($data->page != true)
    <div class="row d-flex justify-content-center">
            {{$data->links()}}
    </div>
    @endif
</div>
@endsection
