---
layout: default
---

<h1>All images</h1>

<h2>Conbhairean</h2>

<div class="flex flex-wrap">
  {% for i in (1..19) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Conbhairean-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Conbhairean-0{{ num }}.jpg?w=600"><br>
      Conbhairean-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>


<h1>All images</h1>

<h2>Lanzarote</h2>

<div class="flex flex-wrap">
  {% for i in (1..39) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Lanzarote-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Lanzarote-0{{ num }}.jpg?w=600"><br>
      Lanzarote-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Hebrides</h2>

<div class="flex flex-wrap">
  {% for i in (1..35) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Hebrides-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Hebrides-0{{ num }}.jpg?w=600"><br>
      Hebrides-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Madeira</h2>

<div class="flex flex-wrap">
  {% for i in (1..43) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Madeira-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Madeira-0{{ num }}.jpg?w=600"><br>
      Madeira-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Lofoten</h2>

<div class="flex flex-wrap">
  {% for i in (1..79) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Lofoten-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Lofoten-0{{ num }}.jpg?w=600"><br>
      Lofoten-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Dolomites</h2>

<div class="flex flex-wrap">
  {% assign images = "000a,000b,2-2,2-3,2,6764,6767,6770,6782,6788,6800,6815,6818,6834,6900,6924,6993,7041,7050,7071,7116,7121,7170,7187,7191,7217,7223,7226,7234,7287,7293,7307,7313,7316,7339,7342,7344-2,7344,7351,7364,7380,7398,7421,7424,7476,7515,7530,7539,7557,7585,7588,7592,7610,7616,7625,7659,7718,7847,7886,7889,7892,7895-2,7895,7910,7916,7928,7937,7962,7998,8015,8018,8068,8109,8112,8115,8127,8151,8187,8217,8248,8254,8257,8265,8282,8338,9219,9220,9221" | split: "," %}

  {% for i in images %}
    {% assign num = i %}
    <a href="https://mathayward.imgix.net/Dolomiti-{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Dolomiti-{{ num }}.jpg?w=600"><br>
      Dolomiti-{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Alberta</h2>

<div class="flex flex-wrap">
  {% for i in (1..18) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Canada-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Canada-0{{ num }}.jpg?w=600"><br>
      Canada-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Iceland</h2>

<div class="flex flex-wrap">
  {% for i in (1..97) %}
    {% assign num = i %}
    {% if i > 19 %}
      <a href="https://mathayward.imgix.net/Iceland_00{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
        <img src="https://mathayward.imgix.net/Iceland_00{{ num }}.jpg?w=600"><br>
        Iceland_00{{ num }}.jpg
      </a>
    {% elsif i < 10 %}
      <a href="https://mathayward.imgix.net/Iceland-00{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
        <img src="https://mathayward.imgix.net/Iceland-00{{ num }}.jpg?w=600"><br>
        Iceland-00{{ num }}.jpg
      </a>
    {% else %}
      <a href="https://mathayward.imgix.net/Iceland-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
        <img src="https://mathayward.imgix.net/Iceland-0{{ num }}.jpg?w=600"><br>
        Iceland-0{{ num }}.jpg
      </a>
    {% endif %}
  {% endfor %}
</div>

<h2>Lake District</h2>

<div class="flex flex-wrap">
  {% for i in (1..13) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Lakes-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Lakes-0{{ num }}.jpg?w=600"><br>
      Lakes-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>North Coast 500</h2>

<div class="flex flex-wrap">
  {% for i in (1..59) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/NC500-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/NC500-0{{ num }}.jpg?w=600"><br>
      NC500-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Scottish Highlands</h2>

<div class="flex flex-wrap">
  {% for i in (1..28) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Highlands-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Highlands-0{{ num }}.jpg?w=600"><br>
      Highlands-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Skye</h2>

<div class="flex flex-wrap">
  {% for i in (1..46) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Skye-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Skye-0{{ num }}.jpg?w=600"><br>
      Skye-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Assynt</h2>

<div class="flex flex-wrap">
  {% for i in (1..2) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Assynt-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Assynt-0{{ num }}.jpg?w=600"><br>
      Assynt-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>

<h2>Tenerife</h2>

<div class="flex flex-wrap">
  {% for i in (1..14) %}
    {% assign num = i %}
    {% if i < 10 %}
        {% assign num = "0" | append: i %}
    {% endif %}
    <a href="https://mathayward.imgix.net/Tenerife-0{{ num }}.jpg" target="_blank" class="w-1/3 p-2">
      <img src="https://mathayward.imgix.net/Tenerife-0{{ num }}.jpg?w=600"><br>
      Tenerife-0{{ num }}.jpg
    </a>
  {% endfor %}
</div>