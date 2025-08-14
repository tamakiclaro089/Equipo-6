abstract class Usuario {
  String nombre;
  String apellido;

  Usuario(this.nombre, this.apellido);

  void mostrarInfo(); // Método abstracto
}

class Alumno extends Usuario {
  String matricula;
  int idCarrera;
  List<Calificacion> calificaciones = [];

  Alumno(this.matricula, String nombre, String apellido, this.idCarrera)
      : super(nombre, apellido);

  @override
  void mostrarInfo() {
    print('Alumno: $nombre $apellido, Matrícula: $matricula');
  }

  double promedio() {
    if (calificaciones.isEmpty) return 0;
    double sum = calificaciones.fold(0, (prev, c) => prev + c.nota);
    return sum / calificaciones.length;
  }
}

class Calificacion {
  String materia;
  double nota;

  Calificacion(this.materia, this.nota);
}
