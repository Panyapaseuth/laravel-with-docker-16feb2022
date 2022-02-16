@extends('layouts.home')

@section('content')
    <section id="main" class="wrapper">
        <div class="inner">
            <header class="special">
                    <h2>{{ $page->getTranslatedAttribute('title',  app()->getLocale() , 'fallbackLocale') }}</h2>
            </header>
            <div class="content">

                {!! $page->getTranslatedAttribute('body',  app()->getLocale() , 'fallbackLocale') !!}
            </div>
        </div>
    </section>


@endsection