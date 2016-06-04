@extends('user.master')
@section('description','Đây là trang chủ')
@section('content')
<div id="maincontainer">
  <section id="product">
    <div class="container">
     <!--  breadcrumb --> 
      <ul class="breadcrumb">
        <li>
          <a href="#">Trang chủ</a>
          <span class="divider">/</span>
        </li>
        <li class="active"> Giỏ hàng</li>
      </ul>       
      <h1 class="heading1"><span class="maintext"> Giỏ Hàng</span><span class="subtext"> Tất cả sản phẩm trong giỏ hàng của bạn</span></h1>
      <!-- Cart-->
      <div class="cart-info">
        <table class="table table-striped table-bordered">
          <tr>
            <th class="image">Hình ảnh</th>
            <th class="name">Tên sản phẩm</th>
            <th class="quantity">Số lượng</th>
            <th class="total">Hành động</th>
            <th class="price">Giá</th>
            <th class="total">Tổng cộng</th>
           
          </tr>
          <form method="POST" action="">
            <input type="hidden" name="_token" value="{!! csrf_token() !!}">
          @foreach($content as $item)
          <tr>
            <td class="image"><a href="#"><img title="product" alt="product" src="{!! asset('public/upload/image/'.$item['options']['img']) !!}" height="50" width="50"></a></td>
            <td  class="name"><a href="#">{!! $item["name"] !!}</a></td>
            <td class="quantity"><input class="span1 qty" type="text" size="1" value="{!! $item['qty'] !!}"" name="quantity[40]"></td>
            <td class="total"> 
              <a href="#" class="updatecart" id="{!! $item['rowid'] !!}"><img class="tooltip-test" data-original-title="Update" src="{!! asset('public/user/img/update.png') !!}" alt="" ></a>
              <a href="{!! url('xoa-san-pham',['id' => $item['rowid']]) !!}"><img class="tooltip-test" data-original-title="Remove"  src="{!! asset('public/user/img/remove.png') !!}" alt=""></a></td>
            <td class="price">{!! number_format($item["price"],0,",",".") !!}</td>
            <td class="total">{!! number_format($item["price"]*$item["qty"],0,",",".") !!}</td>
          </tr>
          @endforeach
          </form>
        </table>
      </div>
      <div class="container">
      <div class="pull-right">
          <div class="span4 pull-right">
            <table class="table table-striped table-bordered ">
              <tr>
                <td><span class="extra bold totalamout">Tổng cộng :</span></td>
                <td><span class="bold totalamout">{!! number_format($total,0,",",".") !!}</span></td>
              </tr>
            </table>
            <a href="https://www.sandbox.paypal.com/vn/cgi-bin/webscr?cmd=_flow&SESSION=lWdz0EB5JS0Vps1cb87xBwhLpKIAjl2eX7MFwlMbOl_xG0epuv-mPHn-5n4&dispatch=50a222a57771920b6a3d7b606239e4d529b525e0b7e69bf0224adecfb0124e9b61f737ba21b08198a1cfd454fa474d16e3bed0f38ea80110"><input type="submit" value="Thanh toán" class="btn btn-orange pull-right"></a>
            <a href="{!! url('/') !!}"><input type="submit" value="Tiếp tục mua" class="btn btn-orange pull-right mr10"></a>
          </div>
        </div>
        </div>
    </div>
  </section>
</div>
@endsection