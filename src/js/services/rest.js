export class Rest {
  static #URL = '../php/index.php';

  get(recurso, objeto) {}
  static post(recurso, objeto) {
    const opciones = {
			method : 'POST',
			headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(objeto)
		}
    //Construimos la petición
    return fetch(`${Rest.#URL}/${recurso}`, opciones) //Hacemos la petición
      .then(respuesta => {
        //Control de Errores
        if (!respuesta.ok) throw Error(`${respuesta.status} - ${respuesta.statusText}`)

        //La respuesta es un texto con la URL del recurso creado.
        return respuesta.text()
        //respuesta.json() //Si fuera json.
      })
  }
  put(recurso, objeto) {}
  delete(recurso, objeto) {}
}
