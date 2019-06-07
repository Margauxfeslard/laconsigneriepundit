const growlerEchange1 = document.querySelector(".echange1");
const growlerEchange2 = document.querySelector(".echange2");
const calculGrowler = document.querySelector(".recap-echange h4");
const paniergrowler = document.querySelector(".paniergrowler");

let growlers = []
const smallGrowler = {
  quantite: 0,
  capacite: `1L`,
  prix: `0`,
};

const bigGrowler = {
  quantite: 0,
  capacite: `2L`,
  prix: `0`,
};

growlers.push(smallGrowler)
growlers.push(bigGrowler)

if (sessionStorage.getItem("growlers")) {
  growlers = JSON.parse(sessionStorage.getItem("growlers"))
} else {
  sessionStorage.setItem("growlers", JSON.stringify(growlers))
}


const majText = () => {
  const onelitervalue = growlers.find((item) => {
    return item.capacite == "1L"
  }).quantite;

  const twolitersvalue = growlers.find((item) => {
    return item.capacite == "2L"
  }).quantite;

  calculGrowler.innerText = `Tu souhaites échanger ${onelitervalue} bouteille de 1L et  ${twolitersvalue} bouteilles de 2L`

}

const displayGrowlers = (growlers) => {
  growlers.forEach((growler) => {
    const lignegrowler = document.getElementById(`${growler.capacite}`);

    if (growler.quantite > 0) {
      const prix = growler.quantite * growler.prix;

      if (lignegrowler) {
        lignegrowler.querySelector(".growlerquantite").innerHTML = `<p>${growler.quantite} L</p>`;
        lignegrowler.querySelector(".growlerprix").innerHTML = `<p>${prix} €</p>`;

      } else {
        paniergrowler.insertAdjacentHTML("beforeend",
          `<li id=${growler.capacite} class="list-group-item"><span class="growlercapacite"><p>${growler.capacite}</p></span><span class="growlerquantite"><p>${growler.quantite}</p></span><span class="growlerprix"><p>${prix} €</p></span>
          <input class="input" type="hidden" name="items[${growler.capacite}]" value="${growler.capacite}">
          </li>`);

      }
    } else {
      if (lignegrowler) {
        lignegrowler.parentNode.removeChild(lignegrowler);
      }
    }
  })
  sessionStorage.setItem("growlers", "")
  sessionStorage.setItem("growlers", JSON.stringify(growlers))
  majText()
}

displayGrowlers(JSON.parse(sessionStorage.getItem("growlers")))


const addOne = (capacite, quantite) => {
  growlers.find((item) => {
    return item.capacite == capacite
  }).quantite = quantite;
  displayGrowlers(growlers)
}

if (growlerEchange1) {
  growlerEchange1.addEventListener("input", (event) => {
    // const echangeInput = input.value;
    const onelitervalue = growlerEchange1.value ? growlerEchange1.value : 0;
    // const twolitersvalue = growlerEchange[1].value ? growlerEchange[1].value : 0;
    addOne("1L", parseInt(onelitervalue))
  });
}

if (growlerEchange2) {
  growlerEchange2.addEventListener("input", (event) => {
    // const echangeInput = input.value;
    const twolitervalue = growlerEchange2.value ? growlerEchange2.value : 0;
    // const twolitersvalue = growlerEchange[2].value ? growlerEchange[2].value : 0;
    addOne("2L", parseInt(twolitervalue))
  });
}



