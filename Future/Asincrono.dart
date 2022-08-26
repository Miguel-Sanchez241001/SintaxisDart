void main(List<String> args) async {
  print('Inicio del programa');

  String nombre = await verNombre('11'); // el resuktado del future se muestra gracias al await
  print(nombre );
  //esperaPorMiEdad().then((print)); // cuando el valor se imprime sin mas se hace referencia a la funcion sin mas
  // si usamos el await en el future se detiene el proceso para eseperar 
print(await esperaPorMiEdad());
  print('Fin del programa');
}

Future<String> verNombre(String id) async{
  return '$id - Miguel Sanchez';
}

Future<String> esperaPorMiEdad(){
  return Future.delayed(new Duration(seconds: 3),()=>'Tengo 18');
}