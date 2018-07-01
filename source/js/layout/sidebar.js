window.addEventListener('load', function () {
    // 回到顶部
    (function () {
        var sidebarTocElm = document.getElementById('sidebar-toc');
        if (sidebarTocElm && !isMobile()) {
            var oldOffetTop = sidebarTocElm.offsetTop;

            function scrollEvent() {
                var scrollTop = sidebarTocElm.offsetTop - document.documentElement.scrollTop;

                if (scrollTop < 50 && !sidebarTocElm.classList.contains('sidebar-toc')) {
                    sidebarTocElm.classList.add('sidebar-toc');
                    var next = sidebarTocElm.nextSibling;
                    while (next) {
                        next.classList.add('sidebar-hidden');
                        next = next.nextSibling;
                    }
                } else if (scrollTop > (-oldOffetTop + 110) && sidebarTocElm.classList.contains('sidebar-toc')) {
                    sidebarTocElm.classList.remove('sidebar-toc');
                    var next = sidebarTocElm.nextSibling;
                    while (next) {
                        next.classList.remove('sidebar-hidden');
                        next = next.nextSibling;
                    }
                }
            }

            scrollEvent();
            document.addEventListener('scroll', scrollEvent);
        }
    })();
});
