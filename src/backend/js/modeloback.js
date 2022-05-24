export class ModeloBack {
  constructor(Rest) {
    this.rest = Rest;
  }
  login(email, password){
    this.rest.post('login', {'email': email, 'password': password})
    .then((respuesta)=> {console.log(respuesta);})
  }
}
