// loading
document.onreadystatechange = function(){
    var page = document.getElementById('page');
    var timeout;
    if (document.readyState === 'interactive') {
        timeout = window.setTimeout(function(){
            disableLoad();
        },1500);
    }

    if (document.readyState === 'complete') {
        if (page.classList.contains('js-hidden')) {
            disableLoad();
            clearTimeout(timeout)
        }
    }
};

function disableLoad(){
    var
    page = document.getElementById('page'),
    loading = document.getElementById('page-loading');

    loading.classList.add('js-hidden');
    page.classList.remove('js-hidden');
}
