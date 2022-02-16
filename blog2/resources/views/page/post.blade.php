@extends('layouts.home')

@section('content')


    <section id="main" class="wrapper">
        <div class="inner">
            <header class="special">
                <h2>@lang('home.News&Event')</h2>
            </header>
            <div class="content">

            <!-- First Blog Post -->

                @foreach($posts as $post)


                <h2>
                <a href="{{ $post->slug }}">{{ $post->getTranslatedAttribute('title',  app()->getLocale() , 'fallbackLocale') }}</a>
            </h2>

                    <p>@lang('home.post on') {{$post->created_at->diffForHumans()}}</p>

                    <img src="{{ Voyager::image( $post->image ) }}" width="300">
            <p>{{ $post->getTranslatedAttribute('excerpt',  app()->getLocale() , 'fallbackLocale') }}</p>
            <a class="button primary small" href="{{ $post->slug }}">@lang('home.read more')<span class="glyphicon glyphicon-chevron-right"></span></a>
                    <hr>

            @endforeach

            <!-- Pager -->

                {{--{{$posts->links()}}--}}

                    @include('pagination.default', ['paginator' => $posts])

        </div>
        </div>
    </section>



@endsection