<!DOCTYPE html>
<html lang="{{ config.language|default(theme.language) }}">
<head>
    <meta charset="utf-8" />
    {% block title %}
        <title>{% if page.title %}{{ page.title }} | {% endif %}{{ config.subtitle|default(theme.subtitle) }}</title>
    {% endblock %}

    {% include './_partial/common/head.swig' %}
    
    {% block pageCss %}
    {% endblock %}
</head>
<body ontouchstart>
    {% block loader %}
        {% include './_partial/common/loader.swig' %}
    {% endblock %}

    <div id="page" class="page js-hidden">
        {% block header %}
            {% include './_partial/common/header.swig' %}
        {% endblock %}

        {% block main %}
        {% endblock %}

        {% block footer %}
            {% include './_partial/common/footer.swig' %}
        {% endblock %}

        {% block backTop %}
            {% include './_partial/common/back-top.swig' %}
        {% endblock %}
    </div>

    <!-- build:js /js/common.js -->
        <script type="text/javascript" src="js/common/utils.js"></script>
        <script type="text/javascript" src="js/common/pack.js"></script>
        <script type="text/javascript" src="js/common/animation.js"></script>
        <script type="text/javascript" src="js/layout/loading.js"></script>
        <script type="text/javascript" src="js/layout/header.js"></script>
        <script type="text/javascript" src="js/layout/back-top.js"></script>
        <script type="text/javascript" src="js/layout/sidebar.js"></script>
        <script type="text/javascript" src="js/layout/post.js"></script>
    <!-- endbuild -->

    {% block pagejs %}
    {% endblock %}

    {% block other %}
    {% endblock %}
    {{ live2d() }}

    <!-- 百度推送 -->
        <script>
        (function(){
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
            }
            else {
                bp.src = 'http://push.zhanzhang.baidu.com/push.js';
            }
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();
        </script>
    <!-- end百度推送 -->

    {% include './_partial/common/math.swig' %}
</body>
</html>