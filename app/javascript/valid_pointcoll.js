//renseigner les dataset de l'input avec la date saisie//

const dateElement = document.querySelector('.date_input');

if (dateElement) {
  console.log("test");
  document.addEventListener('change', (event) => {
    const dateSaisie = document.querySelector('.date_input').value;
    dateElement.insertAdjacentHTML('beforeend', `<input class="input" type="hidden" name="dateinput" value=${dateSaisie}>`);
    checkbouton(dateSaisie);
  })
}

const checkbouton = (dateSaisie) => {
  if (dateSaisie === "") {
    console.log(dateSaisie);
    document.getElementById('boutoncmd').className = "hidden";
    document.getElementById('textadvise').className = "show";
  } else {
    document.getElementById('boutoncmd').className = "show";
    document.getElementById('textadvise').className = "hidden";

  }
}


if (document.querySelector(".mapboxgl-popup-content")) {
  const infows = document.querySelector(".mapboxgl-popup-content");
  infows.onload = checkbouton(document.querySelector('.date_input').value)
}
