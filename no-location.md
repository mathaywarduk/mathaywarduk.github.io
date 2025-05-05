---
layout: default
---

<h1>Images with no location</h1>
<div class="flex flex-wrap">
{% for item in site.photography %}
  {% if item.slug != 'jericho' %}
    {% assign image_group = site.data.images[item.slug] %}
    {% for group in image_group %}
      {% for image in group.images %}
        {% if image.location == nil %}
          <a href="https://mathayward.imgix.net/{{ image.url }}" target="_blank" class="w-1/3 p-2">
            <img src="https://mathayward.imgix.net/{{ image.url }}?w=600"><br>
            {{ image.url }} in {{ item.slug }}
          </a>
        {% endif %}
      {% endfor %}
    {% endfor %}
  {% endif %}
{% endfor %}
</div>


