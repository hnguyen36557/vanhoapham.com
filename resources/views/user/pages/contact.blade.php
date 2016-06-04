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
        <li class="active">Liên hệ</li>
      </ul>  
      <!-- Contact Us-->
      <h1 class="heading1"><span class="maintext">Liên Hệ</span><span class="subtext"> Liên hệ với chúng tôi để biết thêm chi tiết</span></h1>
      <div class="row">
        <div class="span9">
          <form class="form-horizontal"  method="post" action="{!! url('lien-he') !!}">
            <input type="hidden" name="_token" value="{!! csrf_token() !!}">
            <fieldset>
              <div class="control-group">
                <label for="name" class="control-label">Tên <span class="required">*</span></label>
                <div class="controls">
                  <input type="text"  class="required" id="name" value="" name="name">
                </div>
              </div>
              <div class="control-group">
                <label for="message" class="control-label">Lời Nhắn</label>
                <div class="controls">
                  <textarea  class="required" rows="6" cols="40" id="message" name="message"></textarea>
                </div>
              </div>
              <div class="form-actions">
                <input class="btn btn-orange" type="submit" value="Gửi" id="submit_id">
                <input class="btn" type="reset" value="Nhập lại">
              </div>
            </fieldset>
          </form>
        </div>
        
        <!-- Sidebar Start-->
        <div class="span3">
          <aside>
            <div class="sidewidt">
              <h2 class="heading2"><span>Thông tin liên hệ</span></h2>
              <p> Lorem Ipsum is simply<br>
                Lorem Ipsum is simply<br>
               Lorem Ipsum is simply<br>
                <br>
                Phone: (012) 333-7890<br>
                Fax: (123) 444-7890<br>
                Email: test@contactus.com<br>
                Web: yourcompanyname.com<br>
              </p>
            </div>
          </aside>
        </div>
        <!-- Sidebar End-->
        
      </div>
    </div>
  </section>
</div>

@endsection