{% extends '_layout.swig' %}

{% block pageCss %}
{{ css('scss/views/page/works') }}
{% endblock %}

{% block main %}
{% include './_partial/works/main.swig' %}
{% endblock %}