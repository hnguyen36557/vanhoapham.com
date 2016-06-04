<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductImages extends Model {

	protected $table = 'product_images';
	protected $fillable = ['image','product_id'];
	public $tiemstampss = false;
	public function procduct() {
		return $this->belongTo('App\Product');
	}
}
