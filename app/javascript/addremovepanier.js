const bieres = document.querySelectorAll(".card-biere");
const user_id = parseInt(document.getElementById("layout").dataset.user);
const panierligne = document.querySelector(".panierligne");
const addtobasket = document.querySelectorAll(".addtobasket");
const removefrombasket = document.querySelectorAll(".removefrombasket");

let panier = []
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


if (sessionStorage.getItem("panier")) {
  panier = JSON.parse(sessionStorage.getItem("panier"))
} else {
  sessionStorage.setItem("panier", JSON.stringify(panier))
}

const displayPanier = (panier) => {
  panier.forEach((ligne) => {
    const lignebiere = document.getElementById(`${ligne.biereid}`);
    if (ligne.quantite > 0) {
      const prix = ligne.quantite * ligne.biereprix;
      if (lignebiere) {
        lignebiere.querySelector(".bierequantite").innerHTML = `<p>${ligne.quantite} L</p>`;
        lignebiere.querySelector(".biereprix").innerHTML = `<p>${prix} €</p>`;
      } else {
        panierligne.insertAdjacentHTML("beforeend",
          `<li id=${ligne.biereid} class="list-group-item"><span class="bierenom"><p>${ligne.bierenom}</p></span><span class="bierequantite"><p>${ligne.quantite} L</p></span><span class="biereprix"><p>${prix} €</p></span>
          <input class="input" type="hidden" name="items[${ligne.biereid}]" value="${ligne.quantite}">
          </li>`);
      };
    } else {
      if (lignebiere) {
        lignebiere.parentNode.removeChild(lignebiere);
      }
    }
  }
  )
  sessionStorage.setItem("panier", "")
  sessionStorage.setItem("panier", JSON.stringify(panier))
}

displayPanier(JSON.parse(sessionStorage.getItem("panier")))


const addOne = (biereid, event) => {
  panier.find((item) => {
    return item.biereid == biereid
  }).quantite += 1;
  displayPanier(panier)
  displayInput(event, biereid)
}

const removeOne = (biereid, event) => {
  panier.find((item) => {
    return item.biereid == biereid
  }).quantite -= 1
  if (panier.find((item) => {
    return item.biereid == biereid
  }).quantite <= 0) {
    panier.find((item) => {
      return item.biereid == biereid
    }).quantite = 0
  }
  displayPanier(panier)
  displayInput(event, biereid)

}

const displayInput = (event, biereid) => {
  quantite = panier.find((item) => {
    return item.biereid == biereid
  }).quantite
  const inputbasket = event.path[3].querySelector(".inputbasket")
  inputbasket.value = quantite
}


if (addtobasket) {
  addtobasket.forEach((button) => {
    button.addEventListener("click", (event) => {
      let biereid = ""
      if (document.querySelector(".card-show")) {
        biereid = document.querySelector(".card-show").dataset.biereid
      } else {
        const dataset = button.parentElement.parentElement.parentElement.dataset
        biereid = dataset.biereid;
      }
      addOne(biereid, event);
    })
  })
}

if (removefrombasket) {
  removefrombasket.forEach((button) => {
    button.addEventListener("click", (event) => {
      if (document.querySelector(".card-show")) {
        biereid = document.querySelector(".card-show").dataset.biereid
      } else {
        const dataset = button.parentElement.parentElement.parentElement.dataset
        biereid = dataset.biereid;
      }
      removeOne(biereid, event);
    })
  })
}

