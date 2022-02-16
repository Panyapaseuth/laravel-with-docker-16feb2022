<!DOCTYPE HTML>

<!--
	Industrious by TEMPLATED
	templated.co @templatedco
        Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->

<html lang="{{ app()->getLocale() }}">

<head>
    <title>LAPNet</title>
    <meta charset="utf-8" />
    {{--<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />--}}
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    {{--<link rel="stylesheet" href="assets/css/main.css" />--}}

    <link rel="stylesheet" href="{{URL::asset('assets/css/main.css')}}" />
    <link rel="stylesheet" href="{{URL::asset('assets/css/style.css')}}" />
    <link rel="stylesheet" href="{{URL::asset('assets/css/style2.css')}}" />
    <link rel="stylesheet" href="{{URL::asset('assets/css/font-awesome.min.css')}}" />
    <link rel="stylesheet" href="{{URL::asset('assets/css/swiper.min.css')}}" />
    {{--Popup--}}
    <link rel="stylesheet" href="{{URL::asset('assets/css/popup.css')}}" />

    <link rel="stylesheet" href="{{URL::asset('assets/css/font.css')}}" />
    @if (app()->getLocale() =='lao') <link rel="stylesheet" href="{{URL::asset('assets/css/stylefont.css')}}" /> @endif
</head>
{{--<body class="is-preload" @if (app()->getLocale() =='lao')style="font-family: Phetsarath OT" @endif>--}}
<body class="is-preload">

