function isMobile() {
    if ((navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i)))
        return true;
    else
        return false;
}

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
