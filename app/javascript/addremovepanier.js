const biere = document.querySelectorAll(".card-biere");
const addtobasket = document.querySelectorAll(".addtobasket");
const removefrombasket = document.querySelectorAll(".removefrombasket");
const panierligne = document.querySelector(".panierligne");


const addtopanier = (biereid, bierenom, biereprix, quantite) => {
  const lignebiere = document.getElementById(`${biereid}`);
  console.log(lignebiere);
  const prix = quantite * biereprix;

  if (lignebiere) {
    lignebiere.querySelector(".bierequantite").innerText = `${quantite}`;
    lignebiere.querySelector(".biereprix").innerText = `${prix}€`;
    } else {
    panierligne.insertAdjacentHTML("beforeend", `<li id="${biereid}" class="list-group-item d-flex justify-content-between align-items-center"><span class="bierenom">${bierenom}</span><span class="badge badge-primary badge-pill bierequantite">${quantite}</span><span class="biereprix">${prix}€</span></li>`)
  };
}


if (addtobasket) {
  let value = 0;
  addtobasket.forEach((button) => {
    button.addEventListener("click", (event) => {
      const inputbasket = button.parentElement.parentElement.getElementsByClassName('form-control')[0];
      value += 1;
      inputbasket.value = value
      const biereid = button.parentElement.parentElement.parentElement.parentElement.parentElement.dataset.biereid
      const bierenom = button.parentElement.parentElement.parentElement.parentElement.parentElement.dataset.bierenom
      const biereprix = button.parentElement.parentElement.parentElement.parentElement.parentElement.dataset.biereprix
      addtopanier(biereid, bierenom, biereprix, value)
    })
  })
  removefrombasket.forEach((button) => {
    button.addEventListener("click", (event) => {
      const inputbasket = button.parentElement.parentElement.getElementsByClassName('form-control')[0];
      value -= 1;
      if (value < 0) {
        value = 0;
      }
      else {
        inputbasket.value = value;
      }
    })
  })
}