

class User {
  
  final String nombre;
  final int edad;
  final List<String> profesiones;

  User({ 
    required this.nombre, 
    required this.edad, 
    required this.profesiones 
  });

  //crear copywith para crear un nuevo estado
  User copyWith({String? nombre,int? edad,List<String>? profesiones,}){
    return User(nombre: nombre ?? this.nombre, edad: edad ?? this.edad, profesiones: profesiones ?? this.profesiones);
  }

  


}