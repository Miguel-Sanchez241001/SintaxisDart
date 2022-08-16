
import 'dart:io'; //libreria para recibir datos por consola
import 'dart:math'; // libreria para el random
void  main(List<String> args) {
  print('Juguemos, adivina mi numero esta entre el 1 y el 100');
  print('---------------------------------------------');
  int numeroOculto = Random().nextInt(100);
 
  bool encontrado = false;
  while (!encontrado) {
    print('Ingresa un numero');
    var entrada = stdin.readLineSync(); // lectura del input de consola
    int line = int.parse(entrada.toString()) ; // transformacion a String y luego a entero
    if (line == numeroOculto) {
      print('Felicidades encontraste mi numero $numeroOculto');
      encontrado = true;
    }else{
      print('Sigue intentando');
      if (line>numeroOculto) {
        print('un poco menos');
        
      } else {
        print('Un poco mas');
      }

    }
    print('----------------------------------');
  }
}


