(function ($) {
    $(document).ready(function () {
        var $contDiv = $(".page-content");
        $contDiv.css("height", $contDiv.height());
        if (window.location.hash == '') {
            window.location.hash = 'main';
        }
        $(window).bind("hashChange", function (e, newHash, oldHash) {
            $.getJSON("index.php?request=json&content=" + encodeURIComponent(newHash),
                function (data) {
                    if (oldHash == '') {
                        $contDiv.hide().html(data).wrapInner('<div/>').show();
                        $('div:first', $contDiv).hide();


                        $('div:first', $contDiv).fadeIn(1800, function () {
                            App.setPage("index");  // set current page
                            App.init(); // init the rest of plugins and elements
                        });
                        $contDiv.animate({
                            height:$('div:first', $contDiv).height() + "px"
                        }, 400);
                    }
                    else {
                        $contDiv.fadeOut(200, function () {
                            $contDiv.html(data).wrapInner('<div/>').fadeIn(200, function () {
                                $contDiv.animate({
                                    height:$('div:first', $contDiv).height() + "px"
                                });
                                App.setPage("index");  // set current page
                                App.init(); // init the rest of plugins and elements
                            });
                        });
                    }
                });
        });
        $(window).hashChange();
    });
})(jQuery);