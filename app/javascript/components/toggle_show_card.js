const toggleShowCard = () => {

  const contents = document.querySelectorAll("#content");
  console.log(contents)

  const planets = document.querySelectorAll(".circle-img");

  planets.forEach((planet) => {
    planet.addEventListener('click', (event) => {
      if (event.target == planet) {
        const content = planet.nextElementSibling
        content.classList.toggle("show");
      }

  // createPopper(contents, planets, {
  //   placement: 'bottom',
  // });


      // else {
      //   console.log("here")
      //   contents.forEach((content) => {
      //     console.log("hello")
      //     if(content.classList.contains("show")){
      //       content.classList.remove("show");
      //     }
      //   })
      // }
    });
  });

  // document.addEventListener('click', (event) => {
  //   console.log(event.currentTarget, event.target)
  //   if (event.target == planet) {
  //     content.classList.add("show");
  //   } else {
  //     content.classList.remove("show");
  //     }
  // });
}

    // if (event.currentTarget == planet || content) {
    //    content.classList.toggle("show");
    //    console.log(event);
    //  }
    // } else {
    //    content.classList.toggle("hide")
    // }

// document.getElementById("circle-img").addEventListener('click', () => {
//    content.classList.toggle("show");

// planets.forEach((planet) => {
//   planet.addEventListener('click', (event) => {
//     content.classList.add("show")
//   });
// });

export { toggleShowCard }
