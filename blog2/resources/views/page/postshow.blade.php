@extends('layouts.home')

@section('content')


    <section id="main" class="wrapper">
        <div class="inner">
            <div class="content">

            <!-- Blog Post -->

            <!-- Title -->
            <h1>{{ $post->getTranslatedAttribute('title',  app()->getLocale() , 'fallbackLocale') }}</h1>

            <!-- Date/Time -->
            <p>@lang('home.post on') {{$post->created_at->diffForHumans()}}</p>

            {{--<hr>--}}

            <!-- Preview Image -->
                {{--<img src="{{ Voyager::image( $post->image ) }}" style="width:100%">--}}

            <hr>
                <p>{!! $post->getTranslatedAttribute('body',  app()->getLocale() , 'fallbackLocale') !!}</p>
            </div>

        <div class="content">
            <header class="special">
                <h2>@lang('home.another news & event')</h2>
            </header>
            <div class="highlights">
                @foreach($otherpost as $post)
                    <section>
                        <a href="{{ $post->slug }}">
                            <div class="img-hover-zoom"> <img src="{{ Voyager::image( $post->image ) }}" style="height: 200px;"  ></div>
                        </a>
                        <h3>
                            <a href="{{ $post->slug }}">{{ $post->getTranslatedAttribute('title',  app()->getLocale() , 'fallbackLocale') }}</a>
                        </h3>
                        <p>@lang('home.post on') {{$post->created_at}}</p>
                        <hr>
                    </section>
                @endforeach

                <a class="button primary small" href="all">@lang('home.read more')<span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>

        </div>
        </div>

    </section>

@endsection