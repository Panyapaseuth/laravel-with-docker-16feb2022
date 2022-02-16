{{--<ul class="links">
    @foreach($items as $menu_item)
        <li><a href="{{ $menu_item->link() }}">{{ $menu_item->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</a></li>
    @endforeach
</ul>--}}

<ul class="links">

    @foreach($items as $item)
        @if($item->children->count())
                <li><a><span>{{ $item->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</span></a>
                        <ul>
                    @foreach($item->children as $subItem)
                        <li class="active">
                                <a href="{{$subItem->link()}}"><span>{{ $subItem->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</span></a>
                        </li>
                    @endforeach
                        </ul>
                </li>
            @else
                        <li><a href="{{$item->link()}}"><span>{{ $item->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</span></a></li>
        @endif
    @endforeach
</ul>
