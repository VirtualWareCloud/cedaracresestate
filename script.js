const images = [
  "IMAGES/main-image.jpeg",
  "IMAGES/kitchen_living1.jpeg",
  "IMAGES/balcony6.jpg",
  "IMAGES/bathroom2.jpg",
  "IMAGES/bedroom1.jpeg",
  "IMAGES/bedroom2.jpeg",
  "IMAGES/living1.jpg",
  "IMAGES/garden1.jpeg"
];

let currentIndex = 0;

function updateSlider() {
  document.getElementById("mainImg").style.backgroundImage = `url(${images[currentIndex]})`;
  document.getElementById("leftImg").style.backgroundImage = `url(${images[(currentIndex + 1) % images.length]})`;
  document.getElementById("rightImg").style.backgroundImage = `url(${images[(currentIndex - 1 + images.length) % images.length]})`;
}

function nextSlide() {
  currentIndex = (currentIndex + 1) % images.length;
  updateSlider();
}

function prevSlide() {
  currentIndex = (currentIndex - 1 + images.length) % images.length;
  updateSlider();
}

function toggleMenu() {
  const menu = document.getElementById("navMenu");
  menu.style.display = menu.style.display === "flex" ? "none" : "flex";
}

// Touch support
let touchStartX = 0;
let touchEndX = 0;

const slider = document.getElementById("slider");
slider.addEventListener("touchstart", e => {
  touchStartX = e.changedTouches[0].screenX;
});
slider.addEventListener("touchend", e => {
  touchEndX = e.changedTouches[0].screenX;
  if (touchEndX < touchStartX - 50) nextSlide();
  if (touchEndX > touchStartX + 50) prevSlide();
});

setInterval(nextSlide, 3000);
window.onload = updateSlider;
