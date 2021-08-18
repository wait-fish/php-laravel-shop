@extends('components.headerFooter')
@section('title')
首页
@endsection
<link rel="stylesheet" type="text/css" href="/assets/css/index.css" />
@section('content')
<!-- 轮播图 -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        @foreach($banner as $row)
            @if($row->id == 1)
            <!-- 注意active问题，出现多个则无法轮播 -->
            <div class="carousel-item active">
            @else
            <div class="carousel-item">
            @endif
            <img src="{{$row->src}}" class="d-block w-100" alt="...">
            </div>
        @endforeach
    </div>
    <button style="background-color: transparent; border: none;" class="carousel-control-prev" type="button"
        data-target="#carouselExampleIndicators" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </button>
    <button style="background-color: transparent; border: none;" class="carousel-control-next" type="button"
        data-target="#carouselExampleIndicators" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </button>
</div>
<!-- 内容区二 -->
<div class="container-fluid main2">
    <div class="row">
        <div class="col-md-6 col-xl-4 my-5">
            <div>
                <img src="/assets/images/index01.jpg" class="w-100" alt="">

                <div class="main2-text">
                    <h6>Digital World</h6>
                    <h3>Exchange
                        Deals</h3>
                    <a href="/shop?active=1">去购买</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-xl-4 my-5">
            <div>
                <img src="/assets/images/index02.jpg" class="w-100" alt="">
                <div class="main2-text">
                    <h6>Todays Deals</h6>
                    <h3>Accessories
                        Special</h3>
                    <a href="/shop?active=1">去购买</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-xl-4 my-5">
            <div>
                <img src="/assets/images/index03.jpg" class="w-100" alt="">
                <div class="main2-text">
                    <h6>Hot Deals</h6>
                    <h3>Handbags Design</h3>
                    <a href="/shop?active=1">去购买</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 新产品 -->
<div class="container my-5 newProducts">
    <div class="row d-flex justify-content-center">
        <h1 style="letter-spacing: 10px;">新产品</h1>
    </div>
    <div class="row d-flex justify-content-center mt-4">
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
                    aria-controls="pills-home" aria-selected="true">最受好评</a>
            </li>
            <li class="nav-item">
                <a class="nav-link my-i">/</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab"
                    aria-controls="pills-profile" aria-selected="false">畅销组</a>
            </li>
            <li class="nav-item">
                <a class="nav-link my-i">/</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab"
                    aria-controls="pills-contact" aria-selected="false">特别组</a>
            </li>
        </ul>
    </div>
    <!-- 内容区域 -->
    <div class="row">
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                <div class="row ">
                    @foreach($list1 as $row)
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
            </div>
            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                <div class="row ">
                    @foreach($list2 as $row)
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
            </div>
            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                <div class="row ">
                   @foreach($list3 as $row)
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
            </div>
        </div>
    </div>
</div>
<!-- 小版块 -->
<div class="xiaobankuai">
    <div class="container ">
        <div class="row">
            <div class="col-md-6 col-xl-4 py-5">
                <div class="box">
                    <i class="iconfont icon-wuliuqiache"></i>
                    <h5>We ship worldwide on order over $99</h5>
                </div>
            </div>
            <div class="col-md-6 col-xl-4 py-5">
                <div class="box">
                    <i class="iconfont icon-qianbao"></i>
                    <h5>Safe, superfast & secure payment gateways</h5>
                </div>
            </div>
            <div class="col-md-6 col-xl-4 py-5">
                <div class="box">
                    <i class="iconfont icon-shouji"></i>
                    <h5>Call for styling advice on +123 1234 5678</h5>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 导入轮播列表 -->
@include('components.bannerlist')
@endsection
