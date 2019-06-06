const biere = document.querySelectorAll(".card-biere");
const addtobasket = document.querySelectorAll(".addtobasket");
const removefrombasket = document.querySelectorAll(".removefrombasket");
const panierligne = document.querySelector(".panierligne");


const majtopanier = (biereid, bierenom, biereprix, quantite) => {
  const lignebiere = document.getElementById(`${biereid}`);
  const prix = quantite * biereprix;

  if (lignebiere) {
    lignebiere.querySelector(".bierequantite").innerText = `${quantite}`;
    lignebiere.querySelector(".biereprix").innerText = `${prix}€`;
  } else {
    panierligne.insertAdjacentHTML("beforeend", `<li id="${biereid}" class="list-group-item d-flex justify-content-between align-items-center"><span class="bierenom">${bierenom}</span><span class="badge badge-primary badge-pill bierequantite">${quantite}</span><span class="biereprix">${prix}€</span></li>`)
  };
}

const removefrompanier = (biereid) => {
  const lignebiere = document.getElementById(`${biereid}`);
  if (lignebiere) {
    lignebiere.parentNode.removeChild(lignebiere);
  }
  };



if (addtobasket) {
  addtobasket.forEach((button) => {
     button.addEventListener("click", (event) => {
           value = parseInt(button.parentNode.parentNode.querySelector(".inputbasket").value)
      const dataset = button.parentElement.parentElement.parentElement.parentElement.parentElement.dataset
      const inputbasket = button.parentNode.parentNode.querySelector(".inputbasket");
      value += 1;
      inputbasket.value = value
      const biereid =dataset.biereid
      const bierenom =dataset.bierenom
      const biereprix =dataset.biereprix
      majtopanier(biereid, bierenom, biereprix, value)
    })
  })
  removefrombasket.forEach((button) => {
    button.addEventListener("click", (event) => {
      const dataset = button.parentElement.parentElement.parentElement.parentElement.parentElement.dataset
      const biereid =dataset.biereid
      const lignebiere = document.getElementById(`${biereid}`)
      value = lignebiere.querySelector(".bierequantite").innerText;
      const inputbasket = button.parentElement.parentElement.getElementsByClassName('form-control')[0];
      value -= 1;
      if (value <= 0) {
        value = 0;
        const biereid = button.parentElement.parentElement.parentElement.parentElement.parentElement.dataset.biereid
        removefrompanier(biereid)
        inputbasket.value = value
      }
      else {
        inputbasket.value = value
        const dataset = button.parentElement.parentElement.parentElement.parentElement.parentElement.dataset
        const biereid = dataset.biereid
        const bierenom = dataset.bierenom
        const biereprix = dataset.biereprix
        majtopanier(biereid, bierenom, biereprix, value)
      }
    })
  })
}