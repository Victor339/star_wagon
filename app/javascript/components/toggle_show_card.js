const toggleShowCard = () => {
  console.log("test")
}

var content = document.getElementById("content");

// document.getElementById("circle-img").addEventListener('click', () => {
//   content.classList.toggle("show");
// });

document.addEventListener('click', (event) => {
  if (event.currentTarget == document.getElementById("circle-img") || document.getElementById("content")) {
     content.classList.toggle("show")
  } else {
     content.classList.toggle("hide")
  }
});

export { toggleShowCard }
