@extends('layouts.home')

@section('content')


    <section id="main" class="wrapper">
        <div class="inner">
            <div class="content">

                <!-- Title -->
                <h1>{{ $product->getTranslatedAttribute('name',  app()->getLocale() , 'fallbackLocale') }}</h1>
                <hr>
                <!-- Preview Image -->
                <figure class="change-ratio">
                    <img src="{{ Voyager::image( $product->image ) }}" />
                </figure>
                <hr />
                {{--<img src="{{ Voyager::image( $product->image ) }}" style="width:100%">--}}
                {{--<hr>--}}
                <p>{!! $product->getTranslatedAttribute('body',  app()->getLocale() , 'fallbackLocale') !!}</p>

            </div>
        </div>
    </section>

@endsection