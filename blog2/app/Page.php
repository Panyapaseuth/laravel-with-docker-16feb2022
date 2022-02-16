<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Spatial;

class Page extends Model
{
    use Translatable;
    protected $translatable = ['title', 'body'];

    public static function findBySlug($slug)
    {
        return static::where('slug', $slug)->first();
    }

}
