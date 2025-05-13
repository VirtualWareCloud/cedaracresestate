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

setInterval(nextSlide, 3000);
window.onload = updateSlider;
