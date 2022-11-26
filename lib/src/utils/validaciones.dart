class Validaciones {
  static String? isValid(String texto, value) {
    switch (texto) {
      case "Nombre":
        return null;
      case "Apellido":
        return null;
      case "Ciudad":
        return null;
      case "Estado":
        return null;
      case "Pais":
        return null;
      case "Correo electronico":
        String pattern =
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regExp = RegExp(pattern);
        return regExp.hasMatch(value ?? '')
            ? null
            : 'El valor ingresado no luce como un correo';
      case "Contraseña":
        return null;
    }
    return null;
  }
}
