document.addEventListener("turbo:load", function() {
  const loadMoreTrigger = document.querySelector("#load-more");
  const container = document.querySelector("#pins-container");

  if (loadMoreTrigger) {
    window.addEventListener("scroll", function() {
      console.log("i get call")
      if (window.innerHeight + window.scrollY >= document.body.offsetHeight) {
        const nextPageUrl = loadMoreTrigger.dataset.nextPageUrl;
        if (nextPageUrl) {
          this.fetch(nextPageUrl, { headers: { "Turbo-Frame": "content" } })
            .then(response => response.text())
            .then(html => {
              const tempDiv = document.createElement("div");
              tempDiv.innerHTML = html;
              const newPinsContainer = tempDiv.querySelector("#pins-container");
              const newLoadMore = tempDiv.querySelector("#load-more");
              if (newPinsContainer && newLoadMore) {
                container.innerHTML += newPinsContainer.innerHTML;
                loadMoreTrigger.dataset.nextPageUrl = newLoadMore.dataset.nextPageUrl;
              }
            });
        }
      }
    });
  }
});