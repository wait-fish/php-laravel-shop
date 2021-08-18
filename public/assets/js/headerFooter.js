$(function() {
    // 点击搜索
    $('.my-icons .icon-sousuo').click(function() {
        $('.sreach-box').css({
            display: 'flex',
            width: '100%'
        }).addClass('animated slideInLeft');
    });
    function closeSreach() {
       $('.sreach-box').css({
           width: 0,
           transition: '0.5s',
           right: 0,
       })
       setTimeout(function() {
           $('.sreach-box').css({
               display: 'none'
           });
       }, 500)
    }
    //关闭搜索
    $('.sreach-box .icon-guanbi').click(closeSreach);

    // 购物袋显示隐藏
    $('nav .my-icons .icon-gouwudai').on('mouseenter', function() {
        $('.gouwudai').css({width: '300px'}).stop().show(500);
    }).on('mouseleave', function() {
             $('.gouwudai').stop().hide(500);
    });
    $('.gouwudai').on('mouseenter', function() {
        $('.gouwudai').css({width: '300px'}).stop().show(500);
    }).stop().on('mouseleave', function() {
         $('.gouwudai').stop().hide(500);
    });
	//返回顶部-----
	var goTop = document.querySelector(".fish_top");
	var timer = null;
	console.log('窗口可视高度:' + document.documentElement.clientHeight);
	if (goTop != null) {
		window.addEventListener("scroll", scrollTop);
		goTop.addEventListener("click", goHome);
		scrollTop();
	}

	function scrollTop() {

		//获取被卷去的距离
		let backTop = document.documentElement.scrollTop || document.body.scrollTop;
        // console.log(backTop ,window.screen.height);
		//如果超出屏幕一个可视窗口距离则显示
		if (backTop > window.screen.height  ) {
			goTop.style.display = "flex";
		} else {
			goTop.style.display = "none";
		}

		//返回顶部
	}

	function goHome() {
		clearInterval(timer);
		timer = setInterval(function() {
			let backTop = document.documentElement.scrollTop || document.body.scrollTop ;
			let speed = Math.ceil(backTop / 15);
            document.documentElement.scrollTop = backTop - speed;
            document.body.scrollTop  = backTop - speed;
			// console.log(document.documentElement.scrollTop);
			if (document.documentElement.scrollTop === 0 && document.body.scrollTop === 0) {
				clearInterval(timer);
			}
		}, 10);

	}
});
