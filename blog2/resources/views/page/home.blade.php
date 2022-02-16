@extends('layouts.home')

@section('content')



    <div class="popup" id="login">
        <div class="popup-inner">
            <img src="{{ Voyager::image( $home->image ) }}" class="popup-image" alt="">
            <div class="close">x</div>
        </div>
    </div>
    <!-- Banner -->
        {{--<img src="{{ Voyager::image( $home->image ) }}" width="100%">--}}
    <div class="swiper-container2">
    {{--{!! $slide->body !!}--}}
        <div class="swiper-wrapper">
            @foreach($contents as $content)
            <div class="swiper-slide"><a href="content/{{ $content->slug }}"><img src="{{ Voyager::image( $content->image ) }}" width="100%" /></a></div>
            @endforeach
        </div>
    <!-- Add Pagination -->
        <!-- <div class="swiper-pagination"></div> -->
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>
    <!-- Highlights -->
    <section id="main" class="wrapper">
        <div class="inner">
            <header class="special">
                <h2>@lang('home.Product&service')</h2>
            </header>
            <div class="highlights">
                @foreach($products as $product)
                    <section>
                        <div class="content">
                            <header>
                                <div class="img-hover-zoom">
                                    <a href="product/{{ $product->slug }}"><img src="{{ Voyager::image( $product->image ) }}" height="150" ></a>
                                </div>
                                    <h3><a href="product/{{ $product->slug }}">{{ $product->getTranslatedAttribute('name',  app()->getLocale() , 'fallbackLocale') }}</a></h3>
                            </header>
                            {{--<hr>--}}
                            {{--<p>{{$product->getTranslatedAttribute('excerpt',  app()->getLocale() , 'fallbackLocale')}}</p>--}}
                        </div>
                    </section>

                @endforeach
            </div>


            <div class="content">
                <header class="special">
                    <h2>@lang('home.News&Event')</h2>
                </header>
                <div class="highlights">
                    @foreach($posts as $post)
                        <section>
                            <div class="img-hover-zoom">
                                <a href="post/{{ $post->slug }}"><img src="{{ Voyager::image( $post->image ) }}" height="180" ></a>
                            </div>
                                    <h3><a href="post/{{ $post->slug }}">{{ $post->getTranslatedAttribute('title',  app()->getLocale() , 'fallbackLocale') }}</a></h3>
                            <p>@lang('home.post on') {{$post->created_at}}</p>
                                <hr>
                        </section>
                    @endforeach
<section>
    <article class="forecast">

    @foreach($allposts as $allpost)
        <article class="day-forecast">
            <h2><a href="post/{{ $allpost->slug }}">{{ $allpost->getTranslatedAttribute('title',  app()->getLocale() , 'fallbackLocale') }}</a></h2>
            <p>@lang('home.post on') {{$allpost->created_at}}</p>
        </article>
        @endforeach

    </article>
    <a class="button primary fit" href="post/all">@lang('home.more post')<span class="glyphicon glyphicon-chevron-right"></span></a>
</section>
                </div>

                </div>

            </div>
    </section>

{{--<div class="member-slide">
    <header class="special">
        <h2>@lang('home.memberbanks')</h2>
    </header>
    <div class="swiper-container">
    {!! $home->body !!}
    <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>
</div>--}}

    <div class="member-slide">
        <header class="special">
            <h2>@lang('home.memberbanks')</h2>
        </header>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                @foreach($members as $member)
                <div class="swiper-slide"><a href="{{$member->web_site}}"> <img src="{{ Voyager::image( $member->image ) }}" width="140px" /></a></div>
                @endforeach
            </div>
        </div>
    </div>

@endsection
