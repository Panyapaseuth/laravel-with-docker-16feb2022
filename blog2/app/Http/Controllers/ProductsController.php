<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductsController extends Controller
{
    public function index()
    {
        $products = Product::latest()->get();

        return view('page.product',compact('products'));
    }
    public function show($slug)
    {
        $product = Product::where('slug', '=', $slug)->firstOrFail();
        return view('page.productshow', compact('product'));
    }
}
