document.addEventListener("turbo:load", function() {
  var lazyImages = [].slice.call(document.querySelectorAll("img[data-src]"));

  if ("IntersectionObserver" in window) {
    let lazyImageObserver = new IntersectionObserver(function(entries, observer) {
      entries.forEach(function(entry) {
        if (entry.isIntersecting) {
          let lazyImage = entry.target;
          let dataSrc = lazyImage.dataset.src;

          if (dataSrc) {
            lazyImage.src = dataSrc;
            lazyImage.removeAttribute("data-src");
            lazyImageObserver.unobserve(lazyImage);
          }
        }
      });
    });

    lazyImages.forEach(function(lazyImage) {
      // Optional: Set crossorigin attribute if loading from different origin
      if (lazyImage.dataset.src.startsWith('http') && !lazyImage.crossOrigin) {
        lazyImage.crossOrigin = 'anonymous';
      }
      lazyImageObserver.observe(lazyImage);
    });
  } else {
    // Fallback for browsers that don't support IntersectionObserver
    lazyImages.forEach(function(lazyImage) {
      lazyImage.src = lazyImage.dataset.src;
      lazyImage.removeAttribute("data-src");
    });
  }
});

