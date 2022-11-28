class Validaciones {
  static String? isValid(String texto, value) {
    switch (texto) {
      case "Nombre":
        if (value != "") return null;
        return "Este campo debe contener texto";
      case "Apellido":
        if (value != "") return null;
        return "Este campo debe contener texto";
        return null;
      case "Ciudad":
        if (value != "") return null;
        return "Este campo debe contener texto";
        return null;
      case "Estado":
        if (value != "") return null;
        return "Este campo debe contener texto";
        return null;
      case "Pais":
        if (value != "") return null;
        return "Este campo debe contener texto";
        return null;
      case "Correo electronico":
        String pattern =
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regExp = RegExp(pattern);
        return regExp.hasMatch(value ?? '')
            ? null
            : 'El valor ingresado no luce como un correo';
      case "Contraseña":
        if (value!.length > 7) return null;
        return "La contraseña debe tener 8 caracteres o más";
    }
    return null;
  }
}
