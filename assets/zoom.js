/* ---------------------------------------------------------------
   Zoom lightbox script
   Pairs with zoom.css. Add class="zoom" to any <img> and this
   handles the rest: click (or Enter/Space) to open full-screen,
   click/Escape to close, and arrow navigation when the image's
   containing <div> has more than one .zoom image (wraps at both ends).

   Add class="zoom-full" on top of "zoom" for images that should
   open at full 90% viewport width with vertical scrolling, instead
   of the default fit-on-screen behavior.
--------------------------------------------------------------- */
(function () {
  const overlay = document.createElement('div');
  overlay.className = 'zoomjs-overlay';
  overlay.setAttribute('role', 'dialog');
  overlay.setAttribute('aria-modal', 'true');
  overlay.setAttribute('aria-hidden', 'true');
  overlay.setAttribute('tabindex', '-1');
  overlay.innerHTML =
    '<button type="button" class="zoomjs-nav zoomjs-prev" aria-label="Previous image">&lsaquo;</button>' +
    '<img class="zoomjs-overlay-img" alt="">' +
    '<button type="button" class="zoomjs-nav zoomjs-next" aria-label="Next image">&rsaquo;</button>' +
    '<div class="zoomjs-counter"></div>';
  document.body.appendChild(overlay);

  const overlayImg = overlay.querySelector('.zoomjs-overlay-img');
  const prevBtn = overlay.querySelector('.zoomjs-prev');
  const nextBtn = overlay.querySelector('.zoomjs-next');
  const counterEl = overlay.querySelector('.zoomjs-counter');
  let lastFocused = null;
  let gallery = [];
  let index = 0;

  function getGallery(img) {
    const container = img.closest('div') || document.body;
    const all = Array.from(container.querySelectorAll('img.zoom'));
    return all.length ? all : [img];
  }

  function showImage(newIndex) {
    index = (newIndex + gallery.length) % gallery.length;
    const img = gallery[index];
    overlayImg.src = img.src;
    overlayImg.alt = img.alt || '';
    overlayImg.classList.toggle('zoomjs-full', img.classList.contains('zoom-full'));
    overlay.scrollTop = 0;
    if (gallery.length > 1) {
      counterEl.textContent = (index + 1) + ' / ' + gallery.length;
    }
  }

  function openZoom(img) {
    lastFocused = document.activeElement;
    gallery = getGallery(img);
    const multi = gallery.length > 1;
    prevBtn.style.display = multi ? 'flex' : 'none';
    nextBtn.style.display = multi ? 'flex' : 'none';
    counterEl.style.display = multi ? 'block' : 'none';
    showImage(gallery.indexOf(img));
    overlay.classList.add('zoomjs-open');
    overlay.setAttribute('aria-hidden', 'false');
    document.body.style.overflow = 'hidden';
    overlay.focus();
  }

  function closeZoom() {
    overlay.classList.remove('zoomjs-open');
    overlay.setAttribute('aria-hidden', 'true');
    document.body.style.overflow = '';
    if (lastFocused) lastFocused.focus();
  }

  document.addEventListener('click', function (e) {
    const img = e.target.closest('img.zoom');
    if (img) { openZoom(img); return; }

    const navBtn = e.target.closest('.zoomjs-nav');
    if (navBtn) {
      showImage(navBtn.classList.contains('zoomjs-prev') ? index - 1 : index + 1);
      return;
    }

    if (overlay.classList.contains('zoomjs-open') && overlay.contains(e.target)) closeZoom();
  });

  document.addEventListener('keydown', function (e) {
    if (!overlay.classList.contains('zoomjs-open')) return;
    if (e.key === 'Escape') { closeZoom(); return; }
    if (gallery.length > 1 && e.key === 'ArrowRight') { showImage(index + 1); return; }
    if (gallery.length > 1 && e.key === 'ArrowLeft') { showImage(index - 1); return; }
  });

  document.querySelectorAll('img.zoom').forEach(function (img) {
    if (!img.hasAttribute('tabindex')) img.setAttribute('tabindex', '0');
    img.setAttribute('role', 'button');
    img.addEventListener('keydown', function (e) {
      if (e.key === 'Enter' || e.key === ' ') {
        e.preventDefault();
        openZoom(img);
      }
    });
  });
})();
