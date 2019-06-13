
if (document.querySelector(".stock-growler")) {
  if (document.querySelector(".panierligne")) {

    const growlerEchange1 = document.querySelector(".echange1");
    const growlerEchange2 = document.querySelector(".echange2");
    const calculGrowler = document.querySelector(".recap-echange h4");
    const paniergrowler = document.querySelector(".paniergrowler");
    const paniergrowlertopay = document.querySelector(".paniergrowler_add");

    let growlers = []

    const growlerdataset = document.getElementById("dataset").dataset
    const smallGrowler = {
      growlerid: growlerdataset.growlers_small,
      quantiteechange: growlerEchange1.value,
      quantitetotal: 0,
      capacite: `1L`,
      prix: growlerdataset.growlers_small_price,
    };

    const bigGrowler = {
      growlerid: growlerdataset.growlers_big,
      quantiteechange: growlerEchange2.value,
      quantitetotal: 0,
      capacite: `2L`,
      prix: growlerdataset.growlers_big_price,
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
      }).quantiteechange;

      const twolitersvalue = growlers.find((item) => {
        return item.capacite == "2L"
      }).quantiteechange;

      if (growlerEchange1) {
        calculGrowler.innerText = `Tu souhaites échanger ${onelitervalue} bouteilles de 1L et  ${twolitersvalue} bouteilles de 2L`
      }
    }

    const calculnombreGrowler = (growlers) => {
      panierbiere = JSON.parse(sessionStorage.getItem("panier"));
      let volstock1L = growlers[0].quantiteechange
      let volstock2L = growlers[1].quantiteechange
      let volumebiere2L = 0
      let volumebiere1L = 0
      panierbiere.forEach((biere) => {
        volumebiere2L += Math.trunc(biere.quantite / 2);
        volumebiere1L += biere.quantite % 2;
      })
      let add1L = volumebiere1L - volstock1L;
      if (add1L < 0) {
        add1L = 0
      }

      let add2L = volumebiere2L - volstock2L;
      if (add2L < 0) {
        add2L = 0
      }

      const prixtotal1L = add1L * growlers[0].prix
      const prixtotal2L = add2L * growlers[1].prix

      growlers.find((item) => {
        return item.capacite == "1L"
      }).quantitetotal = add1L + volstock1L

      growlers.find((item) => {
        return item.capacite == "2L"
      }).quantitetotal = add2L + volstock2L

      sessionStorage.setItem("growlers", "")
      sessionStorage.setItem("growlers", JSON.stringify(growlers))
      growlers = JSON.parse(sessionStorage.getItem("growlers"))

      //set le maximum dans les inputs//
      //ecris la ligne dans le panier//
      paniergrowlertopay.innerHTML = (` </li><li id="add1L" class="list-group-item"><span class="growlercapacite"><p>1L</p></span><span class="growlerquantite"><p>${add1L}</p></span><span class="growlerprix"><p>${prixtotal1L} €</p></span>
      <input class="input" type="hidden" name="add1L" value="${add1L}">
      <input class="input" type="hidden" name="ech1L" value="${volstock1L}">
      </li><li id="add2L" class="list-group-item"><span class="growlercapacite"><p>2L</p></span><span class="growlerquantite"><p>${add2L}</p></span><span class="growlerprix"><p>${prixtotal2L} €</p></span>
  <input class="input" type="hidden" name="add2L" value="${add2L}">
  <input class="input" type="hidden" name="ech2L" value="${volstock2L}">
 `);


    }


    const displayGrowlers = (growlers) => {
      calculnombreGrowler(growlers)
      growlers.forEach((growler) => {
        const lignegrowler = document.getElementById(`${growler.capacite}`);

        if (growler.quantiteechange > 0) {
          const prix = growler.quantiteechange * 0;
          if (lignegrowler) {
            lignegrowler.querySelector(".growlerquantite").innerHTML = `<p>${growler.quantiteechange}</p>`;
            lignegrowler.querySelector(".growlerprix").innerHTML = `<p>${prix} €</p>`;

          } else {
            paniergrowler.insertAdjacentHTML("beforeend",
              `<li id=${growler.capacite} class="list-group-item"><span class="growlercapacite"><p>${growler.capacite}</p></span><span class="growlerquantite"><p>${growler.quantiteechange}</p></span><span class="growlerprix"><p>${prix} €</p></span>
          <input class="input" type="hidden" name="itemsgrowler[${growler.growlerid}]" value="${growler.quantiteechange}">
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
      }).quantiteechange = quantite;
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
  }
}
