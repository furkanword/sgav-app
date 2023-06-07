let myform = document.querySelector("#myForm"); //seleccionamos el formulario
let myHeaders = new Headers({ "Content-Type": "application/json" }) //creamos el header que vamos a incluir en el fetch

myform.addEventListener("submit", async (e) => { //creamos un evento de escucha al formulario de un "Submit"
    e.preventDefault(); //prevenimos el comportamiento por defecto del formulario al hacer un submit
    let data = Object.fromEntries(new FormData(e.target)); //recuperamos los datos que se llenan en el form
    let config = { //creamos la configuracion que vamos a pasar al fetch
        method: "POST",
        headers: myHeaders,
        body: JSON.stringify(data)
    };
    let res = await (await fetch("scripts/Paises/insertPais.php", config)).text(); //realizamos el fetch y transformamos la respuesta a txt
})