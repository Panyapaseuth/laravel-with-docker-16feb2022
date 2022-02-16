{{--

    @foreach($items as $item)
        @if($item->children->count())
            <ul class="dropdown">
                <li class="dropbtn">{{ $item->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}
                </li>
                <div class="dropdown-content">
                    @foreach($item->children as $subItem)
                        <a href="{{$subItem->link()}}">{{ $subItem->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</a>
                    @endforeach
                </div>
            </ul>
            @else
            <ul class="dropdown">
            <li class="dropbtn"><a href="{{ $item->link() }}">{{ $item->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</a>
            </li></ul>

        @endif
    @endforeach
--}}


    @foreach($items as $item)
        @if($item->children->count())
            <ul class="dropdown">
                <li class="dropbtn">{{ $item->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}
                </li>
                <div class="dropdown-content">

                    @foreach($item->children as $subItem)
                        <a href="{{$subItem->link()}}">{{ $subItem->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</a>
                    @if($subItem->children->count())
                            <div class="dropdown-content-2-top">
                                <button class="btn js-element-scroll-by-up"><i class="arrow up"></i></button>

                            </div>

                            <div class="dropdown-content-2">
                            @foreach($subItem->children as $child)
                                    <a href="{{$child->link()}}">{{$child->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale')}}</a>
                            @endforeach
                            </div>

                            <div class="dropdown-content-2-bottom">
                                <button class="btn js-element-scroll-by-down"><i class="arrow down"></i></button>

                            </div>
                        @endif


                    @endforeach
                </div>
            </ul>
        @else
            <ul class="dropdown">
                <li class="dropbtn"><a href="{{ $item->link() }}">{{ $item->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</a>
                </li></ul>

        @endif
    @endforeach

