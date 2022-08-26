// heredar de una clase con herencia de otras


abstract class Humano{
  String nacimiento;
  String edad;
  String nombre;
  bool vivo = true;
  void matar()=> this.vivo = false;
  Humano(this.edad,this.nacimiento,this.nombre);
}

abstract class Hombre extends Humano{
  void soyHombre()=> print('Tengo que estar solo ');
  Hombre(super.edad, super.nacimiento,super.nombre) ;
}
abstract class Mujer extends Humano{
    void soyMujer()=> print('Solo tengo que esperar a los hombres ');

  Mujer(super.edad, super.nacimiento,super.nombre) ; 
}

abstract class Responsable{  void accionResponsable() => print('Valoro mi tiempo y lo uso con responsabilidad');
}

abstract class Militar{  void accionMilitar() => print('Sirvo a mi patria');
}

abstract class Atleta{  void accionEntrenar() => print('Entreno todos los dias');
}
abstract class Amoroso{
  void accionAmar() => print('Doy amor');
}

class Joven extends Hombre with Atleta,Amoroso{
  Joven(super.edad, super.nacimiento, super.nombre);

}
class Jovencita extends Mujer with Amoroso,Responsable{
  Jovencita(super.edad, super.nacimiento, super.nombre);

}

void main(List<String> args) {
  final Peruano = Joven('19', '4/10/2001', 'Julian');
  Peruano.accionAmar();
  Peruano.accionEntrenar();
  Peruano.soyHombre();
  print('Vivo ${(Peruano.vivo)}');
  Peruano.matar();
    print('Vivo ${(Peruano.vivo)}');

}