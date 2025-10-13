---
layout: default
title:  "Peaks"
seo:
    title: "Peaks"
    description: "A record of the mountains (and big hills) I've climbed."
    image:
      url: "Wild-Camp-004.jpg"
      alt: "Wild Camping on Beinn Each"
---
{% assign peaks = 0 %}
{% assign ascent = 0 %}
{% assign distance = 0 %}
{% assign munros = "" | split: ',' %}
{% assign corbetts = "" | split: ',' %}
{% assign wainwrights = "" | split: ',' %}
{% assign dolomites = "" | split: ',' %}
{% assign hewitts = "" | split: ',' %}
{% assign grahams = "" | split: ',' %}

{% for item in site.data.peaks %}
  {% assign include = item.number %}
    {% if include %}
    {% assign peaks = peaks | plus: item.peaks.size %}
    {% assign ascent = ascent | plus: item.ascent %}
    {% assign distance = distance  | plus: item.distance %}
    {% for peak in item.peaks %}
      {% if peak.category == 'munro' %}
        {% assign munros = munros | push: peak %}
      {% endif %}
      {% if peak.category == 'corbett' %}
        {% assign corbetts = corbetts | push: peak %}
      {% endif %}
      {% if peak.category == 'graham' %}
        {% assign grahams = grahams | push: peak %}
      {% endif %}
      {% if peak.category == 'wainwright' %}
        {% assign wainwrights = wainwrights | push: peak %}
      {% endif %}
      {% if peak.category == 'hewitt' %}
        {% assign hewitts = hewitts | push: peak %}
      {% endif %}
      {% if peak.category == 'dolomite' %}
        {% assign dolomites = dolomites | push: peak %}
      {% endif %}
    {% endfor %}
  {% endif %}
{% endfor %}

<div class="md:w-9/12 md:ml-auto md:pl-8 pt-10 md:pt-12 lg:pt-16 pb-24 md:pb-40 px-8">
  <h1 class="font-display text-4xl md:text-6xl lg:text-7xl mb-0 pb-0 fade-down anim-delay-200">{{ page.title }}</h1>
  <div class="w-full lg:w-2/3 fade-down anim-delay-400">
    <p>A record of the mountains (and big hills) I've climbed. Some with pictures!</p>
  </div>

  <!-- Stats -->
  <div class="flex flex-wrap justify-between gap-x-8 gap-y-4 py-4 border-t border-b">
    <ul class="flex flex-wrap gap-x-8 gap-y-4">
      <li class="text-slide-up animate-stepped">
        <h3 class="font-bold mb-4">Peaks</h3>
        <span class="text-xl py-1 px-2 border br-orange c-orange">{{ peaks | intcomma }}</span>
      </li>
      <li class="text-slide-up animate-stepped">
        <h3 class="font-bold mb-4">Total ascent</h3>
        <span class="text-xl py-1 px-2 border br-orange c-orange">{{ ascent | intcomma }}m</span>
      </li>
      <li class="text-slide-up animate-stepped">
        <h3 class="font-bold mb-4">Total distance</h3>
        <span class="text-xl py-1 px-2 border br-orange c-orange">{{ distance | intcomma }}km</span>
      </li>
    </ul>
    <ul class="flex-wrap gap-x-8 gap-y-4 hidden xl:flex">
      {% if munros.size > 0 %}
      <li class="text-slide-up animate-stepped">
        <h3 class="font-bold mb-4">Munros</h3>
        <span class="text-xl py-1 px-2 border br-orange c-orange">{{ munros.size }}</span>
      </li>
      {% endif %}
      {% if corbetts.size > 0 %}
      <li class="text-slide-up animate-stepped">
        <h3 class="font-bold mb-4">Corbetts</h3>
        <span class="text-xl py-1 px-2 border br-orange c-orange">{{ corbetts.size }}</span>
      </li>
      {% endif %}
      {% if grahams.size > 0 %}
      <li class="text-slide-up animate-stepped">
        <h3 class="font-bold mb-4">Grahams</h3>
        <span class="text-xl py-1 px-2 border br-orange c-orange">{{ grahams.size }}</span>
      </li>
      {% endif %}
      {% if wainwrights.size > 0 %}
      <li class="text-slide-up animate-stepped">
        <h3 class="font-bold mb-4">Wainwrights</h3>
        <span class="text-xl py-1 px-2 border br-orange c-orange">{{ wainwrights.size }}</span>
      </li>
      {% endif %}
      {% if hewitts.size > 0 %}
      <li class="text-slide-up animate-stepped">
        <h3 class="font-bold mb-4">Hewitts</h3>
        <span class="text-xl py-1 px-2 border br-orange c-orange">{{ hewitts.size }}</span>
      </li>
      {% endif %}
      {% if dolomites.size > 0 %}
      <li class="text-slide-up animate-stepped">
        <h3 class="font-bold mb-4">Dolomites</h3>
        <span class="text-xl py-1 px-2 border br-orange c-orange">{{ dolomites.size }}</span>
      </li>
      {% endif %}
    </ul>
  </div>

  <ul class="flex flex-col gap-16 py-4 xl:py-8">
    {% for item in site.data.peaks %}
    {% assign page = "" %}
    {% assign focus = false %}
    {% if forloop.first %}{% assign focus = true %}{% endif %}
    {% if item.link %}
      {% assign page = site.peaks | where: "slug", item.link | first %}
    {% endif %}
    <li class="peak-nav-item group animate-stepped text-slide-up">
      {% if page != "" %}
        <a href="{{ page.url }}" class="flex flex-col gap-4 lg:flex-row lg:items-center lg:gap-8">
      {% else %}
        <article class="flex flex-col gap-4 lg:flex-row lg:items-center lg:gap-8">
      {% endif %}
      {% if page.hero %}
        {% include image.html url=page.hero.url alt=page.hero.alt width=200 height=300 ar="3:4" block_classes="w-full md:w-1/2" classes=" opacity-100 transition-all duration-1000 ease-in-out filter group-hover:opacity-50 group-hover:grayscale" focus=focus  %}
      {% endif %}
        <div class="flex {% if item.link %} flex-col items-start gap-2 {% else %} flex-wrap items-end gap-4 {% endif %} w-full py-4">
          <ul class="flex flex-row gap-2">
            <li class="font-bold {% if item.link %} text-lg {% else %} text-md {% endif %} b-black c-white px-2 py-1 transition-all duration-1000 ease-in-out">
              {% if item.repeat %}
                Re-Peak
              {% else %}
                {% if item.peaks.size > 1 %} Peaks {% else %} Peak {% endif %}
                {{ item.number }}
                {% if item.peaks.size > 1 %}
                - {{ item.number | plus:item.peaks.size | minus:1 }}
                {% endif %}
              {% endif %}
            </li>
          </ul>
          <h2 class="{% if item.link %} text-2xl md:text-3xl xl:text-4xl {% else %} text-2xl xl:text-3xl leading-none {% endif %} font-display tracking-wide inline">
            {{ item.title }}
          </h2>
          <ul class="flex flex-wrap gap-2 {% if item.link %} {% else %}w-full shrink-0 {% endif %}">
            <li>
              <time datetime="{{ item.date | date: '%Y-%m-%d' }}" class="">{{ item.date | date: "%d %B %Y" }}</time>
            </li>
            <li class="before:content-['•'] before:mr-2">{{ item.region }}</li>
            <li class="before:content-['•'] before:mr-2">{{ item.distance | intcomma }}km</li>
            <li class="before:content-['•'] before:mr-2">{{ item.ascent | intcomma }}m ascent</li>
          </ul>
          {% if page != "" %}
            <p class="max-w-prose mb-4 md:mb-8">{{ page.description }}</p>
            <div class="text-slide-up anim-delay-500 flex items-center gap-2 relative z-10 md:mt-4">
              <span>&rsaquo;</span>
              <button class="peak-nav-button text-lg font-display tracking-wide underline md:no-underline md:text-2xl">Read <span class="sr-only">{{ page.title }}</span> article</button>
            </div>
          {% endif %}
        </div>
      {% if page != "" %}
        </a>
      {% else %}
        </article>
      {% endif %}
    </li>
    {% endfor %}
  </ul>


  
</div>
