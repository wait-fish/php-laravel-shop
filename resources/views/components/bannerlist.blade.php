<link href="/assets/css/owl.carousel.css" rel="stylesheet">
<link href="/assets/css/owl.theme.css" rel="stylesheet">
<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/owl.carousel.js"></script>
<style type="text/css">
    #owl-demo{
        position: relative;
    }
    .owl-buttons {
        height: 0;
        position: absolute;
        top: 35%;
        left: 0;
        right: 0;
        display: flex;
        justify-content: space-between;
    }
    .owl-theme .owl-controls .owl-buttons .owl-prev{
       transform: translateX(40px);
    }
    .owl-theme .owl-controls .owl-buttons .owl-next {
        transform: translateX(-20px);
    }
    .owl-theme .owl-controls .owl-buttons .owl-prev,
    .owl-theme .owl-controls .owl-buttons .owl-next {
        background: transparent;
        width: 50px;
        height: 50px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%!important;
    }
    .owl-theme .owl-controls .owl-buttons .owl-prev:hover,
    .owl-theme .owl-controls .owl-buttons .owl-next:hover{
        background: #fe4c1c;
    }
    .owl-prev span,
    .owl-next span{
        color: #212429;
        opacity: 1;
    }
    .owl-theme .owl-controls .owl-buttons .owl-prev:hover span,
    .owl-theme .owl-controls .owl-buttons .owl-next:hover span{
        color: #fff;

    }
</style>
<div id="owl-demo" class="owl-carousel row p-5">
    @foreach($banner2 as $row)
    <div class="item py-3 px-4">
        <div class="my-list">
                <img class="img w-100" src="{{$row->src}}" alt="">
                <img class="imgh w-100" src="{{$row->hsrc}}" alt="">
            <div class="my-box d-flex align-items-center justify-content-center flex-column">
                <h6 class="mt-3">Unpaired Running Shoes</h6>
                <p class="mb-0">￥60.00 <span class="price">￥25.00</span></p>
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
<script type="text/javascript">
    $(function(){
        $('#owl-demo').owlCarousel({
            pagination: false,
            items: 4,
            navigation: true,
            navigationText: [`
            <span class="iconfont icon-zuo"></span>
            `,`
             <span class="iconfont icon-you"></span>
            `]
        });
    });
</script>
