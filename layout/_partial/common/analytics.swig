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

<!-- 百度统计 -->
{% if config.baidu_statistic|default(theme.baidu_statistic) %}
    <script>
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?{{ config.baidu_statistic|default(theme.baidu_statistic) }}";
      var s = document.getElementsByTagName("script")[0]; 
      s.parentNode.insertBefore(hm, s);
    })();
    </script>
{% endif %}

<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- {% if config.google_statistic|default(theme.google_statistic) %}
  <script async src="https://www.googletagmanager.com/gtag/js?id={{ config.google_statistic|default(theme.google_statistic) }}"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', '{{ config.google_statistic|default(theme.google_statistic) }}');
  </script>
{% endif %}  -->