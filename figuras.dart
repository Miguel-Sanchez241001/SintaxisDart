import 'dart:math' as math; // alias a las importaciones

void main(List<String> args) {
  final cuadrado = Figura(10);
print('area con el lado inicial ${(cuadrado.area)}');
cuadrado.estableceArea = 25;
print(' lado despues de cambiar el area ${(cuadrado.lado)}');



}



class Figura {
 double lado ;
 String? nombre;

Figura( this.lado );

double get area {   // getter se llama como una propiedad
  return this.lado*this.lado;
}

set estableceNombre(String nombre){
this.nombre = nombre;
}

 set estableceArea(double area) {
this.lado = math.sqrt(area);
}





@override
  String toString() {
    // TODO: implement toString
    return 'La figura es un  $nombre y tiene un lado de $lado';
  }

}