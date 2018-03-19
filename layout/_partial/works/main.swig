<main class="page__container">

  <div class="works-area">
    {% for project in site.data.project %}
    <div class="works-item animated fadeInUp">

      <div class="works-item-title">
        <span>
          <strong> {{ project.title }} </strong>
        </span>
        <span class="title-date">
          {{ project.date }}
        </span>
      </div>

      <div class="works-item-img">
        <img src="{{ project.img_link }}">
      </div>

      <div class="works-content">

        <div class="use text-warning">
          {% for arrayVal in project.use %}
          <span>
            {{ arrayVal }}
          </span>
          {% endfor %}
        </div>

        <p class="text-muted"> {{ project.direction }} </p>
      </div>

      <div style="margin-top: 30px;">
        <a href="{{ project.link }}" target="_blank">
          Open it
        </a>
      </div>
    </div>
    {% endfor %}
  </div>

</main>