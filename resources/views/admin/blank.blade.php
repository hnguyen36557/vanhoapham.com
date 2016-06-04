@extends('admin.master')
<!-- @section('controller','Category') -->
<!-- @section('action') -->
@section('content')
<script src="{{ url('public/admin/js/jquery.js') }}"></script>
<script type="text/javascript">
    function totalamount()
    {
        var t =0;
        $('.amount').each(function(i,e){
            var amt = $(this).val()-0;
            t +=amt;
        });
        $('.total').html(t);
    }   
        $(function() {
            $('.getmoney').change(function(){
                var total = $('.total').html();
                var getmoney =$(this).val();
                var t = getmoney - total;
                $('.backmoney').val(t).toFixed(2);
            });
            $('.add').click(function() {
                var product = $('.product_id').html();
                var n = ($('.body tr').length-0)+1;
                var tr = '<tr><th class="no">'+n+'</th>' +
                          '<td><select name="product_id" class="form-control product_id" >'+product+'</select></td>' +
                          '<td><input type="text" name="qty[]" value="" placeholder="" class="qty form-control"></td>' +
                          '<td><input type="text" name="price[]" value="" placeholder="" class="price form-control" visible="enable"></td>' +
                          '<td><input type="text" name="amount[]" value="" placeholder="" class="amount form-control"></td>' +
                          '<td><a href="#" class="btn btn-danger delete">Delete</a></td></tr>';
                $('.body').append(tr);
            });
            $('.body').delegate('.delete','click',function() {
                $(this).parent().parent().remove();
                totalamount();
            });
            $('.body').delegate('.product_id','change',function() {
                var tr = $(this).parent().parent();
                var pri = tr.find('.product_id option:selected').attr('data-price');
                tr.find('.price').val(pri);
               
                var qty = tr.find('.qty').val()-0;
                var price = tr.find('.price').val()-0;
                var total = qty * price ;
                tr.find('.amount').val(total);
                totalamount();
            });
            $('.body').delegate('.qty','keyup',function() {
                var tr = $(this).parent().parent();
                var qty = tr.find('.qty').val()-0;
                var price = tr.find('.price').val()-0;
                var total = qty * price ;
                tr.find('.amount').val(total);
                totalamount();
            });
        });
    </script>
        
        <!-- Page Content -->
    <h1 class="page-header">Blank</h1>
        <form action="{{ action('InvoiceController@save') }}" method="post">
        <input type="hidden" name="_token" value="{!! csrf_token() !!}"/>
          <table class="table">
            <tr>
                <td>Ordername</td>
                <td><input type="text" class="form-control" name="odername" value="" placeholder=""></td>
            </tr>
            <tr>
                <td>Location</td>
                <td><input type="text" class="form-control" name="location" value="" placeholder=""></td>
            </tr>
          </table>
            <input type="submit" name="save" value="Order" class="btn btn-primary">
          <table class="table table-bordered table-hover">
              <thead>
                  <tr>
                      <th>STT</th>
                      <th>Tên Sản Phẩm</th>
                      <th>Số lượng</th>
                      <th>Giá</th>
                      <th>Tổng Cộng</th>
                      <th><input type="button" class="btn btn-primary add" value="+"></th>
                  </tr>
              </thead>
              <tbody class="body">
                  <tr>
                      <th class="no">1</th>
                      <td><select name="product_id" class="form-control product_id" >
                      <option data-price="" value="">--Vui lòng chọn sản phẩm--</option>
                       <?php
                            foreach ($data as $inv_product){
                                ?>
                                <option data-price="<?= $inv_product->price; ?>" value="<?= $inv_product->id; ?>"><?= $inv_product->name ?></option>
                                <?php
                            }
                        ?>  </select>                  
                      </td>
                      <td><input type="text" name="qty[]" value="" placeholder="" class="qty form-control"></td>
                      <td><input type="text" name="price[]" value="" placeholder="" class="price form-control"  ></td>
                      <td><input type="text" name="amount[]" value="" placeholder="" class="amount form-control" ></td>
                      <td><a href="#" class="btn btn-danger delete">Xóa</a></td>
                  </tr>
              </tbody>
              
          </table>
        </form>
          <tfoot>
                  <th colspan="6">Tổng Cộng:</th><td><b class="total">0</b></td><br/>
                  <th >Số Tiền Nhận:</th>
                  <td><input type="text" name="" value="" placeholder="" class="getmoney form-control"></td>
                  <th >Số Tiền Dư:</th>
                  <td><input type="text" name="" value="" placeholder="" class="backmoney form-control" ></td>
              </tfoot>
@endsection