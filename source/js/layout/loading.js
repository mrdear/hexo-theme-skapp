// loading
document.onreadystatechange = function(){
<<<<<<< HEAD
    if (document.readyState == 'interactive') {
        window.setTimeout(function(){
            disableLoad()
        },4000)
    }

    if (document.readyState == 'complete') {
        var page = document.getElementById('page')
        if (page.classList.contains('js-hidden')) {
            disableLoad()
=======
    var page = document.getElementById('page');
    if (document.readyState == 'interactive') {
        window.setTimeout(function(){
            disableLoad();
        },4000)
    }

    if (document.readyState == 'complete') {        
        if (page.classList.contains('js-hidden')) {
            disableLoad();
>>>>>>> master
        }
    }
}

function disableLoad(){
    var
    page = document.getElementById('page'),
    loading = document.getElementById('page-loading');

    loading.classList.add('js-hidden');
    page.classList.remove('js-hidden');
<<<<<<< HEAD
}
=======
}
>>>>>>> master
