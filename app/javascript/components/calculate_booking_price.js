const calculateBookingPrice = () => {
  const departure = document.querySelector('#booking_departure_date')

 // const departure = document.querySelector('#search_departure_date')
  // console.log(departure)
  const arrival = document.querySelector('#booking_arrival_date')


  arrival.addEventListener('change', (event) => {
    const price = parseInt(arrival.dataset.price, 0)
    const days = (Date.parse(arrival.value)-Date.parse(departure.value))/86400000
    const total = days * price
    const priceHtml = document.querySelector('#price')
    const priceText = document.querySelector('.price-div')
    priceText.classList.remove('d-none')
    priceHtml.innerText = total

})
// innerText ?
// on recupère une string qu'on veut convertir en date
// difference antre date d'arrivée et date de depart * le prix par jour

}

export { calculateBookingPrice }


// recuperer la departure
// recuperer l'arrival
//recuperer le prix
// dans une div insérer le prix final

// query selctor
//trnasformation string en date
