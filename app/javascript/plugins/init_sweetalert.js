import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelector("#sweet-alert-demo");
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      const name = document.getElementById('spaceship-name').innerText
  const price = document.getElementById('price').innerText
  const option = {
  title: "Thank you!",
  text: `Your booking has been successfuly saved. You will fly with ${name}. The total price for your booking is ${price}€`,
  icon: "success",
  timer: 6000,
}
      swal(option).then(callback); // <-- add the `.then(callback)`
    });
  }
};

export { initSweetalert };
