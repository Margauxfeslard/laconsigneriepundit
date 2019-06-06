const growlerEchange = document.querySelectorAll(".form-control .form-control-sm");
const calculGrowler = document.querySelector(".recap-echange h2");

calculGrowler.insertAdjacentHTML("beforebegin",
  `<h2>Tu souhaites échanger <%= ${growler[0].value} + ${growler[1].value*2} %> L</h2>`);
