import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelector("#sweet-alert-demo");
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      const name = document.getElementById('spaceship-name').innerText
  const price = document.getElementById('price').innerText
  const option = {
  title: "Be Ready 😄",
  text: `Your booking has been successfuly saved. You will fly with ${name}. The total price for your booking is ${price}€`,
  icon: "success",
  timer: 5000,
}
      swal(option).then(callback); // <-- add the `.then(callback)`
    });
  }
};

export { initSweetalert };
