@extends('layouts.home')

@section('content')


    <section id="main" class="wrapper">
        <div class="inner">
            <div class="content">

                <!-- Title -->
                <h1>{{ $content->getTranslatedAttribute('title',  app()->getLocale() , 'fallbackLocale') }}</h1>
                <hr>


                {{--<hr>--}}
                <p>{!! $content->getTranslatedAttribute('body',  app()->getLocale() , 'fallbackLocale') !!}</p>

            </div>
        </div>
    </section>

@endsection