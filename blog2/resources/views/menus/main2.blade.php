<ul class="links">
    @foreach($items as $menu_item)
        <li><a href="{{ $menu_item->link() }}">{{ $menu_item->getTranslatedAttribute('title', app()->getLocale() , 'fallbackLocale') }}</a></li>
    @endforeach
</ul>