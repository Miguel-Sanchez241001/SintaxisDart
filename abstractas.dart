void main(List<String> args) {
  final Julio = Policia(18);
final Andrea = Medico(17);
sacarTristeza(Julio);
sacarTristeza(Andrea);
  
}
// recibe un objeto que implemente ka clase abstracta
void sacarTristeza(Humano humano){
humano.ponerTriste();
}

abstract class Humano{
  late int edad;
  
  bool estadoCivil(String estado);
  void ponerTriste();
}

class Policia implements Humano{
  @override
  int edad;

  @override
  bool estadoCivil(String estado) {
    // TODO: implement estadoCivil
    if (estado=='soltero') {
      return true;
    } else {
      return false;
    }
  }

  @override
  void ponerTriste() {
    // TODO: implement ponerTriste
    print('Imposible no tengo sentimientos');
  }
  Policia(this.edad);


}

class Medico implements Humano{
  @override
  int edad;

  @override
  bool estadoCivil(String estado) {
    // TODO: implement estadoCivil
     if (estado=='soltero') {
      return true;
    } else {
      return false;
    }
  }

  @override
  void ponerTriste() {
    // TODO: implement ponerTriste
    print('no puedo mis pacientes me necesitan');
  }
Medico(this.edad);

}