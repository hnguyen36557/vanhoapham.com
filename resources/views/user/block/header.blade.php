  <div class="headerstrip">
    <div class="container">
      <div class="row">
        <div class="span12">
          <a href="{!! url('/') !!}" class="logo pull-left"><img src="{!! url('public/user/img/logo.png') !!}" alt="SimpleOne" title="SimpleOne"></a>
          <!-- Top Nav Start -->
          <div class="pull-left">
            <div class="navbar" id="topnav">
              <div class="navbar-inner">
                <ul class="nav" >
                  <li><a class="home active" href="{{ url('/') }}">TRANG CHỦ</a>
                  </li>
                  <li><a class="myaccount" href="{!! url('auth/login') !!}">ĐĂNG NHẬP</a>
                  </li>
                  <li><a class="myaccount" href="{!! url('auth/register') !!}">ĐĂNG KÝ</a>
                  </li>
                  <li><a class="shoppingcart" href="{!! url('gio-hang') !!}">GIỎ HÀNG</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Top Nav End -->
        </div>
      </div>
    </div>
  </div>