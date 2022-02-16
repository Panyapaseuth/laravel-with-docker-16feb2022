<footer id="footer">
    <div class="inner">
        <div class="content">
            <section>
                <h3><b>@lang('home.Company')</b></h3>
                <p>@lang('home.Village'),
                    @lang('home.City'),
                    @lang('home.Capital')<br>
                    @lang('home.Call'): <a href="tel:+856305687610">030 568 7610</a><br>
                    @lang('home.Call'): <a href="tel:+856305529158">030 552 9158</a><br>
                    @lang('home.Email'): <a href="mailto:info@lapnet.com.la">info@lapnet.com.la</a></p>
                <h2>@lang('home.Hotline'): <a href="tel:1404">1404</a></h2>
            </section>
            <section>
                <h3>@lang('home.menus')</h3>

                <ul class="alt">
                    {!!menu('main','menus.main2')!!}
                </ul>
            </section>
            <section>
                <h3>@lang('home.Social media')</h3>
                <ul class="plain" style="font-family: Raleway">
                    <li><a href="https://www.facebook.com/Lao-National-Payment-Network-106735734041830/"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
                </ul>
            </section>
        </div>
        <div class="copyright">
            Copright &copy; 2020 LAPNet Co., Ltd.
        </div>
    </div>
</footer>

<script src="{{URL::asset('assets/js/test.js')}}"></script>
<script src="{{URL::asset('assets/js/scroller.js')}}"></script>
<script src="{{URL::asset('assets/js2/style.js')}}"></script>
<script src="{{URL::asset('assets/js/jquery.min.js')}}"></script>
<script src="{{URL::asset('assets/js/browser.min.js')}}"></script>
<script src="{{URL::asset('assets/js/breakpoints.min.js')}}"></script>
<script src="{{URL::asset('assets/js/util.js')}}"></script>
<script src="{{URL::asset('assets/js/main.js')}}"></script>
<script src="{{URL::asset('assets/js/swiper.min.js')}}"></script>
<script src="{{URL::asset('assets/js/swiper.js')}}"></script>
<script src="{{URL::asset('assets/js/map.js')}}"></script>
<script src="{{URL::asset('assets/js/observers.js')}}"></script>

{{--Popup--}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="{{URL::asset('assets/js/popup.js')}}"></script>
<script>

</script>
<!--Load the API from the specified URL
* The async attribute allows the browser to render the page while the API loads
* The key parameter will contain your own API key (which is not needed for this tutorial)
* The callback parameter executes the initMap() function
-->
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDOe2ya-UYklSSDBtu6jQuaOnTaqSUTXu8&callback=initMap">
</script>


</body>
</html>
