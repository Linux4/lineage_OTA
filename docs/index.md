---
title: LineageOS builds by Linux4
---

# Supported devices

{% assign sorted_pages = site.pages | sort: 'title' %}

{% for page in sorted_pages %}
{% if page.title and page.url and page.url contains "/devices/" %}
- [{{ page.title }} ({{ page.codename }})]({{ page.url | relative_url }})
{% endif %}
{% endfor %}
