const growlerEchange = document.querySelectorAll(".echange");
const calculGrowler = document.querySelector(".recap-echange h4");
console.log(calculGrowler);

growlerEchange.forEach((input) => {
  input.addEventListener("blur", (event) => {
    const echangeInput = input.value;
    const onelitervalue = growlerEchange[0].value ? growlerEchange[0].value : 0;
    const twolitersvalue = growlerEchange[1].value ? growlerEchange[1].value : 0;
    calculGrowler.innerText = `Tu souhaites échanger ${onelitervalue} bouteille de 1L et  ${twolitersvalue} bouteilles de 2L`
  });
});
