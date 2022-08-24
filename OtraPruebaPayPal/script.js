//arreglo de las respuestas correctas
let correctas = [1, 1, 1, 1];

//arreglo donde se guardan las respuestas del usuario
let opcion_elegida = [];

let cantidad_correctas = 0;

//funcion que toma el num de pregunta y el input elegido de esa pregunta
function respuesta(num_pregunta, seleccionada) {
	//guardo la respuesta elegida
	opcion_elegida[num_pregunta] = seleccionada.value;

	id = "p" + num_pregunta;
	labels = document.getElementById(id).childNodes;
	labels[3].style.backgroundColor = "white";
	labels[5].style.backgroundColor = "white";
	labels[7].style.backgroundColor = "white";

	seleccionada.parentNode.backgroundColor = "#cec0fc";
}

//funcion que compara los arreglos para saber cuantas correctas tuviste
function corregir() {
	cantidad_correctas = 0;
	for (i = 0; i < correctas.length; i++) {
		if (correctas[i] == opcion_elegida[i]) {
			cantidad_correctas++;
		}
	}
	document.getElementById("resultado").innerHTML = cantidad_correctas;
}