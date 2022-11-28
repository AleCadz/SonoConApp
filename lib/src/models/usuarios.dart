class Usuarios {
  String? nombre;
  String? apellido;
  String? ciudad;
  String? estado;
  String? pais;
  String? correo;
  String? contrasena;

  Usuarios(
      {this.nombre,
      this.apellido,
      this.ciudad,
      this.estado,
      this.pais,
      this.correo,
      this.contrasena});

  factory Usuarios.fromJson(Map<String, dynamic> json) => Usuarios(
      nombre: json["nombre"],
      apellido: json["apellido"],
      ciudad: json["ciudad"],
      contrasena: json["contrasena"],
      correo: json["correo"],
      estado: json["estado"],
      pais: json["pais"]);

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "apellido": apellido,
        "ciudad": ciudad,
        "contrasena": contrasena,
        "correo": correo,
        "estado": estado,
        "pais": pais
      };
}
