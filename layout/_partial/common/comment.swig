{% if page.comments && config.gitTalk %}
    <link rel="stylesheet" href="/js/gitalk.css">
    <script src="/js/gitalk.min.js"></script>
    <script src="/js/md5.min.js"></script>

    <script>
        var tags = [{% for tag in page.tags %}'{{ tag.name }}', {% endfor %}];

        var gitalk = new Gitalk({
            clientID: '{{ config.gitTalk.clientId }}',
            clientSecret: '{{ config.gitTalk.clientSecret }}',
            repo: '{{ config.gitTalk.repo }}',
            proxy: '{{ config.gitTalk.proxy }}',
            owner: '{{ config.gitTalk.owner }}',
            admin: [{% for item in config.gitTalk.admin %}'{{ item }}', {% endfor %}],
            labels: tags,
            id: md5(location.href)
        });

        gitalk.render('comment-container');
    </script>
{% endif %}

{% if page.comments && config.disqus_shortname %}
    <script>
        if (!isMobile()) {
            var disqus_shortname = '{{ config.disqus_shortname }}';
            var disqus_config = function () {
                this.page.url = '{{ config.url }}/{{ page.path }}';
                this.page.identifier = '/{{ page.path }}';
                this.page.title = '{{ page.title }}';
            };

            (function() { // DON'T EDIT BELOW THIS LINE
                var d = document, s = d.createElement('script');s.type = 'text/javascript'; s.async = true;
                s.src = 'https://' + disqus_shortname + '.disqus.com/embed.js';
                s.setAttribute('data-timestamp', +new Date());
                var node = document.getElementsByTagName("script")[0];
                node.parentNode.insertBefore(s, node);
            })();
        }
    </script>
    <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
{% endif %}
