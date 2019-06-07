const biere = document.querySelectorAll(".card-biere");
const addtobasket = document.querySelectorAll(".addtobasket");
const removefrombasket = document.querySelectorAll(".removefrombasket");
const panierligne = document.querySelector(".panierligne");
const user_id = parseInt(document.getElementById("body").dataset.user);
const panier = []

console.log(localStorage.panier)


const majtopanier = (ligne) => {
  const lignebiere = document.getElementById(`${ligne.biereid}`);
  const prix = ligne.quantite * ligne.biereprix;

  if (lignebiere) {
    lignebiere.querySelector(".bierequantite").innerText = `${ligne.quantite}`;
    lignebiere.querySelector(".input").value = `${ligne.quantite}`
    lignebiere.querySelector(".biereprix").innerText = `${prix}€`;
  } else {
    panierligne.insertAdjacentHTML("beforeend", 
      `<li id="${ligne.biereid}" class="list-group-item d-flex justify-content-between align-items-center"><span class="bierenom">${ligne.bierenom}</span><span class="badge badge-primary badge-pill bierequantite">${ligne.quantite}</span><span class="biereprix">${prix}€</span>
      <input class="input" type="hidden" name="items[${ligne.biereid}]" value="${ligne.quantite}">
      </li>`);
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
      const quantite = parseInt(button.parentNode.parentNode.querySelector(".inputbasket").value)
      const dataset = button.parentElement.parentElement.parentElement.parentElement.parentElement.dataset
      const inputbasket = button.parentNode.parentNode.querySelector(".inputbasket");
      quantite += 1;
      inputbasket.value = quantite

      const ligne = { 
        user: `${user_id}`,
        quantite: `${inputbasket.value}`,
        biereid: `${dataset.biereid}`,
        bierenom: `${dataset.bierenom}`,
        biereprix: `${dataset.biereprix}`,
      };
      panier.push(ligne)
      majtopanier(ligne)
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