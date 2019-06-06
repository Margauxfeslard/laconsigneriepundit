const bieres = document.querySelectorAll(".card-biere");
const user_id = parseInt(document.getElementById("body").dataset.user);
const panier = []
const panierligne = document.querySelector(".panierligne");


bieres.forEach((biere) => {
  const ligne = {
    user: `${user_id}`,
    quantite: 0,
    biereid: `${biere.dataset.biereid}`,
    bierenom: `${biere.dataset.bierenom}`,
    biereprix: `${biere.dataset.biereprix}`,
  };
  panier.push(ligne)
});


const displaypanier = (panier) => {
  panier.forEach((ligne) => {
console.log(ligne.user);
const prix = ligne.quantite * ligne.biereprix;
panierligne.insertAdjacentHTML("beforeend", 
`<li id="${ligne.biereid}" class="list-group-item d-flex justify-content-between align-items-center"><span class="bierenom">${ligne.bierenom}</span><span class="badge badge-primary badge-pill bierequantite">${ligne.quantite}</span><span class="biereprix">${prix}€</span>
<input class="input" type="hidden" name="items[${ligne.biereid}]" value="${ligne.quantite}">
</li>`);
  }
  )
};

displaypanier(panier)