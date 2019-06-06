const biere = document.querySelectorAll(".card-biere");
const addtobasket = document.querySelectorAll(".addtobasket");
const removefrombasket = document.querySelectorAll(".removefrombasket");


const majpanier = (x) => {
  console.log(x);
};


if (addtobasket) {
  majpanier("hello");
  let value = 0;
  addtobasket.forEach((button) => {
    button.addEventListener("click", (event) => {
      const inputbasket = button.parentElement.parentElement.getElementsByClassName('form-control')[0];
      value += 1;
      inputbasket.value = value
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