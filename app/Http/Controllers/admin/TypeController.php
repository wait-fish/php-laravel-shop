<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class TypeController extends Controller {
	
	public function typeShow() {
		$data = DB::table("tb_type")->get();
		return view("admin.typeshow", \compact("data"));
	}
	
	public function typeDel(Request $request) {
		$id = $request->input('id');
		$result = DB::table("tb_type")->where("typeid", $id)->delete();
		// dd($result);
		return back();
	}
}