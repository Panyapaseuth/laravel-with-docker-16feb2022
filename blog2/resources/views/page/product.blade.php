@extends('layouts.home')

@section('content')


    <section class="wrapper">
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
                                    <img src="{{ Voyager::image( $product->image ) }}" height="150" >
                                </div>
                                <h3><a href="{{ $product->slug }}">{{ $product->getTranslatedAttribute('name',  app()->getLocale() , 'fallbackLocale') }}</a></h3>
                            </header>
                            <hr>
                            {{--<p>{{$product->getTranslatedAttribute('excerpt',  app()->getLocale() , 'fallbackLocale')}}</p>--}}
                        </div>
                    </section>

                @endforeach
            </div>
        </div>
    </section>

@endsection