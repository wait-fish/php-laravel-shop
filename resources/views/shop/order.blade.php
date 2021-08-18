@extends('components.headerFooter')
@section('title')
订单
@endsection

<link rel="stylesheet" href="/assets/css/order.css">
<!-- 订单 -->
@section('content')
<div class="container order">
    <div class="row my-5">
        <div class="col">
            <table class="table">
                <tr>
                   <th>下单人</th>
                   <th>订单号</th>
                   <th>下单时间</th>
                   <th>操作</th>
                </tr>
                @if ($data != null)
                @foreach($data as $row)
                <tr>
                    <td>{{$row->username}}</td>
                    <td>{{$row->danhao}}</td>
                    <td>{{$row->addtime}}</td>
                    <td><a href="/delorder?order={{$row->danhao}}"><button class="btn delbtn">删除</button></a></td>
                </tr>
                @endforeach
                @endif
            </table>
        </div>
    </div>
</div>
@endsection
