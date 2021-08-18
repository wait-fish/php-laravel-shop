@extends('components.headerFooter')
@section('title')
登录
@endsection

<link rel="stylesheet" href="/assets/css/login.css">
@section('content')
<section class="py-5">
  <div class="container my-5">
    <div class="row justify-content-center">
      <div class="col-12 col-lg-6 col-md-8 col-sm-11">
        <div class="shadow p-5 login bg-white">
         <div class="store-name mb-3 text-center">flipmarto</div>
          <h4 class="text-left mb-3 font-w-5">用户登录</h4>
          <form id="contact-form" method="post" action="/loginisok" novalidate="true">
            <div class="messages">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            </div>
            {{csrf_field()}}
            <div class="form-group">
              <input type="text" name="username" class="form-control" placeholder="用户名" >
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
              <input type="password" name="password"  class="form-control" placeholder="密码" required="" >
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group d-flex flex-nowrap">
              <input type="text" name="captcha"  class="form-control mr-5" placeholder="验证码" required="" style="width: 50%;">
              <img src="{{captcha_src()}}" alt="">
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group mt-4 m2-5">
                <p>如果没有账号则登录时自动创建</p>
            </div> <input type="submit" href="/loginisok" class="btns" value="登录">


          </form>
        </div>
      </div>
    </div>
  </div>
</section>
@endsection
