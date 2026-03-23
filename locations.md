---
layout: default
title:  "Locations"
seo:
  title: "Locations"
  description: "Details of photography locations in Scotland, Canada, Northern England and more"
  image:
    url: "Dolomiti-7610.jpg"
    alt: "Alpe di Siusi"
schema_type: CollectionPage
---

<div class="pt-12 md:pt-40 pb-24 md:pb-40">
  <nav class="w-full md:w-7/10 md:ml-3/10 relative mb-12 px-8 md:px-0" aria-label="Photography locations">
    <ul>
      {% for item in site.locations %}
        {% assign locations = site.data.maps[item.slug] %}
      <li class="fade-up animate-stepped">
        <a href="{{ item.url }}" class="feature-nav-item" data-hover-show data-hover-target=".thumb-{{ item.slug }}">
          <span class="text">{{ item.title }}</span>
          <span class="text-xl block mt-2 text-left no-underline font-serif md:mt-4 ml-2 absolute left-full">({{ locations | size }})</span>
        </a>
      </li>
      {% endfor %}
    </ul>
  </nav>

  {% for item in site.locations %}
    {% for image in item.thumb %}
      <img src="{{ site.image_base }}{{ image.url }}?w=10&h=13&fit=crop" class="fixed z-10 hidden opacity-0 thumb-{{ item.slug }} {% cycle item.slug: 'bottom-20 left-0 w-1/4 h-auto xl:block', 'bottom-20 left-0 w-1/4 xl:bottom-auto xl:left-auto xl:top-1/2 xl:-right-px xl:-mt-80 xl:w-1/6 h-auto md:block', '-top-80 left-1/2 -ml-60 w-1/6 h-auto xxl:block' %}" loading="lazy" alt="{{ image.alt }}" srcset="{{ site.image_base }}{{ image.url }}?w=720&h=960&fit=crop 1200w,
      {{ site.image_base }}{{ image.url }}?w=480&h=640&fit=crop 300w">
    {% endfor %}
  {% endfor %}

</div>