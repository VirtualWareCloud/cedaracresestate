const images = [
  "IMAGES/main-image.jpeg",
  "IMAGES/kitchen_living1.jpeg",
  "IMAGES/balcony6.jpg",
  "IMAGES/bathroom2.jpg",
  "IMAGES/bathroom6.jpg",
  "IMAGES/bathroom7.jpg",
  "IMAGES/bathroom9.jpg",
  "IMAGES/bedroom1.jpeg",
  "IMAGES/bedroom1_view.jpg",
  "IMAGES/bedroom2.jpeg",
  "IMAGES/bedroom2_view.jpg",
  "IMAGES/bedroom3.jpg",
  "IMAGES/bedroom3_view.jpg",
  "IMAGES/bedroom4.jpg",
  "IMAGES/bedroom4_view.jpeg",
  "IMAGES/bedroom5.jpg",
  "IMAGES/bedroom6.jpg",
  "IMAGES/bedroom8.jpg",
  "IMAGES/bedroom9.jpg",
  "IMAGES/covered_parking1.jpg",
  "IMAGES/covered_parking2.jpg",
  "IMAGES/doors.jpg",
  "IMAGES/doors2.jpg",
  "IMAGES/garden1.jpeg",
  "IMAGES/living01.jpeg",
  "IMAGES/living1.jpg",
  "IMAGES/garden02.jpeg",
  "IMAGES/garden07.jpeg"
];

let currentIndex = 0;

function updateSlider() {
  document.getElementById("mainImg").style.backgroundImage = `url(${images[currentIndex]})`;
  document.getElementById("leftImg").style.backgroundImage = `url(${images[(currentIndex + 1) % images.length]})`;
  document.getElementById("rightImg").style.backgroundImage = `url(${images[(currentIndex - 1 + images.length) % images.length]})`;
}

function nextSlide(event) {
  if (event) event.stopPropagation();
  currentIndex = (currentIndex + 1) % images.length;
  updateSlider();
  updateModalImage();
}

function prevSlide(event) {
  if (event) event.stopPropagation();
  currentIndex = (currentIndex - 1 + images.length) % images.length;
  updateSlider();
  updateModalImage();
}

function toggleMenu() {
  const menu = document.getElementById("navMenu");
  menu.style.display = menu.style.display === "flex" ? "none" : "flex";
}

// Touch support for slider
let touchStartX = 0;
let touchEndX = 0;

const slider = document.getElementById("slider");
if (slider) {
  slider.addEventListener("touchstart", e => {
    touchStartX = e.changedTouches[0].screenX;
  });

  slider.addEventListener("touchend", e => {
    touchEndX = e.changedTouches[0].screenX;
    if (touchEndX < touchStartX - 50) nextSlide();
    if (touchEndX > touchStartX + 50) prevSlide();
  });
}

// Modal viewer logic
function openModal() {
  const modal = document.getElementById("imageModal");
  const modalImg = document.getElementById("modalImg");
  modal.style.display = "block";
  modalImg.src = images[currentIndex];
}

function closeModal() {
  document.getElementById("imageModal").style.display = "none";
}

function updateModalImage() {
  const modal = document.getElementById("imageModal");
  const modalImg = document.getElementById("modalImg");
  if (modal && modal.style.display === "block") {
    modalImg.src = images[currentIndex];
  }
}

document.addEventListener("DOMContentLoaded", () => {
  updateSlider();
});

setInterval(nextSlide, 3000);
