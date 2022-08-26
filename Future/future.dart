void main(List<String> args) {
  print('Comienzo aca');
  tareaAsincrona('Miguel').then((value) => print(value.toUpperCase()));    // VALUE = data que devuelve el future, funcion para saber que hcer con la data 
  print('Termino aca y espero el Future');





}


Future<String> tareaAsincrona(String txt){

  return Future.delayed( Duration(seconds: 5),()  {
    return 'mensaje $txt';
  });
}