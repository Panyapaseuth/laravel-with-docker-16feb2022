<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Page;
use App\Product;
use App\Post;
use App\Member;
use App\Content;

class HomeController extends Controller
{
    public function index(){

        $home = Page::where('title', '=', 'HOME')->firstOrFail();
        $slide = Page::where('title', '=', 'Home Slide Wallpaper')->firstOrFail();
        $products = Product::all();
        $allposts = Post::latest('created_at')->Paginate(4);
        $posts = Post::latest('created_at')->Paginate(2);
        $members = Member::all();
        $contents = Content::all();
        return view('page.home', compact('home','products','posts','slide','allposts', 'members', 'contents'));
    }

    public function show($slug)
    {
        $content = Content::where('slug', '=', $slug)->firstOrFail();
        return view('page.content', compact('content'));
    }
}
