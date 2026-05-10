{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}

{% block title %}{{ page.title or __('title.tag') }} | {{ title }}{% endblock %}

{% block class %}tag{% endblock %}

{% block content %}

  <div class="post-block">
    <div class="tag-cloud">
      <div class="tag-cloud-title">
        {{ _p('counter.tag_cloud', site.tags.length) }}
      </div>
      <div class="tag-cloud-tags">
        {{ tagcloud({min_font: 12, max_font: 30, amount: 200, orderby: 'name', order: -1, color: true, start_color: '#999', end_color: '#111'}) }}
      </div>
    </div>
  </div>

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
