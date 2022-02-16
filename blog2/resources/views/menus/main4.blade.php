{{--<a href="#">@lang('home.login')</a>
<a href="{{url('locale/lao')}}">LA</a>
<a href="{{url('locale/en')}}">EN</a>--}}

    @foreach($items as $item)
        <a href="{{ $item->link() }}">{{ $item->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</a>
    @endforeach