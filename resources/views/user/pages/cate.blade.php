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
        <li class="active">Danh mục</li>
      </ul>
      <div class="row">        
        <!-- Sidebar Start-->
        <aside class="span3">
         <!-- Category-->  
          <div class="sidewidt">
            <h2 class="heading2"><span>Danh mục</span></h2>
            <ul class="nav nav-list categories">
            @foreach ($menu_cate as $item_cate)
              <li>
                <a href="{!! URL('loai-san-pham',[$item_cate->id,$item_cate->alias]) !!}">{!! $item_cate->name !!}</a>
              </li>
            @endforeach
            </ul>
          </div>

          <!-- Latest Product -->  
          <div class="sidewidt">
            <h2 class="heading2"><span>Latest Products</span></h2>
            <ul class="bestseller">
              @foreach ($lasted_product as $item_lasted_product)
              <li>
                <img width="50" height="50" src="{!! asset('public/upload/image/'.$item_lasted_product->image) !!}" alt="product" title="product">
                <a class="productname" href="{!!url('chi-tiet-san-pham',[$item_lasted_product->id, $item_lasted_product->alias])!!}">{!! $item_lasted_product->name !!}>{!! $item_lasted_product->name !!}</a>
                <span class="procategory">{!! $name_cate->name !!}</span>
                <span class="price">{!! number_format($item_lasted_product->price,0,",",".") !!}</span>
              </li>
            @endforeach
            </ul>
          </div>
          <!--  Must have -->  
          <div class="sidewidt">
          <h2 class="heading2"><span>Cần phải có</span></h2>
          <div class="flexslider" id="mainslider">
            <ul class="slides">
              <li>
                <img src="img/product1.jpg" alt="" />
              </li>
              <li>
                <img src="img/product2.jpg" alt="" />
              </li>
            </ul>
          </div>
          </div>
        </aside>
        <!-- Sidebar End-->
        <!-- Category-->
        <div class="span9">          
          <!-- Category Products-->
          <section id="category">
            <div class="row">
              <div class="span9">
               <!-- Category-->
                <section id="categorygrid">
                  <ul class="thumbnails grid">
                  @foreach($product_cate as $item_product_cate)
                    <li class="span3">
                      <a class="prdocutname" href="product.html">{!! $item_product_cate->name !!}</a>
                      <div class="thumbnail">
                        <span class="sale tooltip-test">Sale</span>
                        <a href="{!!url('chi-tiet-san-pham',[$item_product_cate->id, $item_product_cate->alias])!!}"><img alt="" src="{{ asset('public/upload/image/'.$item_product_cate->image) }}"></a>
                        <div class="pricetag">
                          <span class="spiral"></span><a href="{!! url('mua-hang',[$item_product_cate->id, $item_product_cate->alias]) !!}" class="productcart">ADD TO CART</a>
                          <div class="price">
                            <div class="pricenew">{!! number_format($item_product_cate->price,0,",",".")!!}</div>
                            <div class="priceold"></div>
                          </div>
                        </div>
                      </div>
                    </li>
                  @endforeach
                  </ul>
                  Tông số trang {!! $product_cate->lastPage() !!}
                  <div class="pagination pull-right">
                    <ul>
                    @if ($product_cate->currentPage() !=1 )
                      <li><a href="{!! str_replace('/?','?',$product_cate->url($product_cate->currentPage() - 1 )) !!}">Prev</a></li>
                    @endif
                      @for($i = 1 ; $i <= $product_cate->lastPage() ; $i = $i + 1)
                      <li class="{!! ($product_cate->currentPage() == $i) ? 'active' : '' !!}">
                        <a href="{!! str_replace('/?','?',$product_cate->url($i)) !!}">{!! $i !!}</a>
                      </li>
                      @endfor
                      @if ($product_cate->currentPage() != $product_cate->lastPage())                      
                      <li><a href="{!! str_replace('/?','?',$product_cate->url($product_cate->currentPage() + 1 )) !!}">Next</a></li>
                      @endif
                    </ul>
                  </div>
                </section>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  </section>
</div>

@endsection