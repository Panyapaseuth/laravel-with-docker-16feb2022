<div class="navtop">
    <a href="#">@lang('home.login')</a>
    <a href="{{url('locale/lao')}}">LA</a>
    <a href="{{url('locale/en')}}">EN</a>
    {{--{!! menu('navtop') !!}--}}
    {{--{!!menu('navtop','menus.main4')!!}--}}
</div>
<header id="header">

    <a class="logo2" href="/" ><img src="{{asset('images/Logo.png')}}" ></a>
{{--<nav></nav>--}}
    <nav class="logo" style="font-weight: 350">
        {{--<img src="{{asset('images/logo_laps.png')}}" width="80px" style="vertical-align: middle; float: left; padding-top: 5px">--}}
        {{--<img src="{{asset('images/logo_laps.png')}}">--}}
        {!!menu('main','menus.main3')!!}
        {{--{!! menu('main') !!}--}}
    </nav>

    <nav>
        {{--<a href="{{url('locale/en')}}">EN</a> |
        <a href="{{url('locale/lao')}}">LA</a>
        <a class="button small" href="#">@lang('home.login')</a>--}}
        <a href="#menu">@lang('home.menu')</a>
    </nav>

    <nav id="menu">
        {!!menu('main','menus.main')!!}
        {{--{!! menu('main') !!}--}}

    </nav>
</header>

{{--
<div class="top-container">
    <div class="box-top-container">
        <img src="{{asset('storage/home/LAPs_Logo.png')}}" width="100px">

    </div>

</div>
--}}
