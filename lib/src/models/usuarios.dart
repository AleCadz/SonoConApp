class Usuarios {
  String? nombre;
  String? apellido;
  String? ciudad;
  String? estado;
  String? pais;
  String? correoElectronico;
  String? contrasena;

  Usuarios(
      {this.nombre,
      this.apellido,
      this.ciudad,
      this.estado,
      this.pais,
      this.correoElectronico,
      this.contrasena});

  factory Usuarios.fromJson(Map<String, dynamic> json) => Usuarios(
      nombre: json["nombre"],
      apellido: json["apellido"],
      ciudad: json["ciudad"],
      contrasena: json["contrasena"],
      correoElectronico: json["correoElectronico"],
      estado: json["estado"],
      pais: json["pais"]);

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "apellido": apellido,
        "ciudad": ciudad,
        "contrasena": contrasena,
        "correoElectronico": correoElectronico,
        "estado": estado,
        "pais": pais
      };
}
