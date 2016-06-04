<?php namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;


class InvoiceController extends Controller {

	public function blank() {
		$data = DB::table('products')->get();
		return view('admin.blank',compact('data'));
	}

	public function save(Request $request) {
		$post = $request->all();
		$data = array(
						'odername' => $post['odername'],
						'location' => $post['location']
					 );
		$i = DB::table('orders')->insertGetId($data);
		if($i >0){
			for($i = 0; $i < count($post['product_id']);$i++) {
				$datadetail = array(
									// 'order_id' => $post['order_id'],
									'product_id' => $post['product_id'],
									'price' => $post['price'][$i],
									'total' => $post['amount'][$i]
								    );
				DB::table('order__details')->insert($datadetail);
			}
			return redirect()->route('admin.blank');
		}
	}

}
