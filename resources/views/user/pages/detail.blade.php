@extends('user.master')
@section('description','Đây là trang chủ')
@section('content')
<div id="maincontainer">
  <section id="product">
    <div class="container">      
      <!-- Product Details-->
      <div class="row">
       <!-- Left Image-->
        <div class="span5">
          <ul class="thumbnails mainimage">
            <li class="span5">
              <a  rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4" class="thumbnail cloud-zoom" href="{!! asset('public/upload/image/'.$product_detail->image) !!}">
                <img src="{!! asset('public/upload/image/'.$product_detail->image) !!}" alt="" title="">
              </a>
            </li>
            @foreach($image as $item_image)
            <li class="span5">
              <a  rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4" class="thumbnail cloud-zoom" href="{!! asset('public/upload/detail/'.$item_image->image) !!}">
                <img  src="{!! asset('public/upload/detail/'.$item_image->image) !!}" alt="" title="">
              </a>
            </li>
            @endforeach
          </ul>
          <ul class="thumbnails mainimage">
            <li class="producthtumb">
              <a class="thumbnail" >
                <img  src="{{ asset('public/upload/image/'.$product_detail->image)}}" alt="" title="">
              </a>
            </li>
            @foreach($image as $item_image)
            <li class="producthtumb">
              <a class="thumbnail" >
                <img  src="{!! asset('public/upload/detail/'.$item_image->image) !!}" alt="" title="">
              </a>
            </li>
            @endforeach
          </ul>
        </div>
         <!-- Right Details-->
        <div class="span7">
          <div class="row">
            <div class="span7">
              <h1 class="productname"><span class="bgnone">{!! $product_detail->name !!}</span></h1>
              <div class="productprice">
                <div class="productpageprice">
                  <span class="spiral"></span>{!! number_format($product_detail->price,0,",",".") !!}</div>
              </div>
              <ul class="productpagecart">
                <li><a class="cart" href="#">Add to Cart</a>
                </li>
              </ul>
         <!-- Product Description tab & comments-->
         <div class="productdesc">
                <ul class="nav nav-tabs" id="myTab">
                  <li class="active"><a href="#description">Mô tả</a>
                  </li>
                  <li><a href="#specification">Đặc điểm</a>
                  </li>
                  <li><a href="#review">Hồi đáp</a>
                  </li>
                  <li><a href="#producttag">Thẻ</a>
                  </li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="description">
                    <h2>nội dung</h2>
                     <br>
                    <br>
                    <ul class="listoption3">
                      <li></li>
                    </ul>
                  </div>
                  <div class="tab-pane " id="specification">
                    <ul class="productinfo">
                     <!--  <li>
                        <span class="productinfoleft"> Mã sản phẩm</span> Product 16 </li>
                      <li>
                        <span class="productinfoleft"> Điểm :</span> 60 </li>
                      <li>
                        <span class="productinfoleft"> Tính khả dụng: </span> In Stock </li>
                      <li>
                        <span class="productinfoleft"> Giá cũ: </span> $500.00 </li>
                      <li>
                        <span class="productinfoleft"> Ex Tax: </span> $500.00 </li>
                      <li>
                        <span class="productinfoleft"> Ex Tax: </span> $500.00 </li>
                      <li>
                        <span class="productinfoleft"> Product Code:</span> Product 16 </li>
                      <li>
                        <span class="productinfoleft"> Reward Points:</span> 60 </li> -->
                    </ul>
                  </div>
                  <div class="tab-pane" id="review">
                    <h3>Hồi Đáp</h3>
                    <form class="form-vertical">
                      <fieldset>
                        <div class="control-group">
                          <label class="control-label">Text input</label>
                          <div class="controls">
                            <input type="text" class="span3">
                          </div>
                        </div>
                        <div class="control-group">
                          <label class="control-label">Textarea</label>
                          <div class="controls">
                            <textarea rows="3"  class="span3"></textarea>
                          </div>
                        </div>
                      </fieldset>
                      <input type="submit" class="btn btn-orange" value="continue">
                    </form>
                  </div>
                  <div class="tab-pane" id="producttag">
                    <p><br>
                      <br>
                    </p>
                    <ul class="tags">
                      <li><a href="#"><i class="icon-tag"></i> Webdesign</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> html</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> html</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> css</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> jquery</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> css</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> jquery</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> Webdesign</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> css</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> jquery</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> Webdesign</a>
                      </li>
                      <li><a href="#"><i class="icon-tag"></i> html</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--  Related Products-->
 <!--  <section id="related" class="row">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Sản phẩm liên quan</span><span class="subtext"> Xem các sản phẩm nổi bật</span></h1>
      <ul class="thumbnails">
        <li class="span3">
        @foreach($product_cate as $item_product_cate)
          <a class="prdocutname" href="product.html">{!! $item_product_cate->name !!}</a>
          <div class="thumbnail">
            <span class="sale tooltip-test">Sale</span>
            <a href="#"><img alt="" src="{!! asset('public/upload/image/'.$item_product_cate->image) !!}"></a>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">{!! number_format($item_product_cate->price,0,",",".") !!}</div>
                <div class="priceold"></div>
              </div>
            </div>
          </div>
        </li>  
        @endforeach
      </ul>
    </div>
  </section> -->
  <!-- Popular Brands-->
</div>
@endsection