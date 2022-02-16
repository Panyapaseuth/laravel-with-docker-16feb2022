<ul class="actions" >
    {{--Previous--}}
@if($paginator->onFirstPage())
    <li>
        <span class="button disabled">← @lang('home.previous')</span>
    </li>
@else

    <li>
        <a class="button" href="{{$paginator->previousPageUrl()}}" rel="next">← @lang('home.previous')</a>
    </li>
    @endif

    {{--Next--}}
    @if($paginator->hasMorePages())
        <li>
            <a class="button" href="{{$paginator->nextPageUrl()}}" rel="next">@lang('home.next') →</a>
        </li>
    @else

        <li>
            <span class="button disabled">@lang('home.next') →</span>
        </li>
    @endif
</ul>

{{--
<ul class="pagination">

    <li class="page-item">
        <a class="page-link" href="http://192.168.0.168:3000/post/all?page=1" rel="prev">« Previous</a>
    </li>


    <li class="page-item disabled" aria-disabled="true">
        <span class="page-link">Next »</span>
    </li>
</ul>--}}
