<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class BlogController extends Controller
{
    public function index()
    {
        $posts = Post::latest('created_at')->simplePaginate(2);
        return view('page.post',compact('posts'));
    }

    public function show($slug)
    {
        $post = Post::where('slug', '=', $slug)->firstOrFail();
        $otherpost = Post::latest('created_at')->Paginate(3);
        return view('page.postshow', compact('post','otherpost'));
    }
}
