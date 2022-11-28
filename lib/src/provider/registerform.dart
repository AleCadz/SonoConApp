import 'package:flutter/cupertino.dart';

class RegisterForm extends ChangeNotifier {
  String correo = "";
  String contrasena = "";
  String nombre = "";
  String apellido = "";
  String ciudad = "";
  String estado = "";
  String pais = "";
  GlobalKey<FormState> formKeys = GlobalKey<FormState>();
  bool islogin = false;

  bool isValidForm() {
    return formKeys.currentState?.validate() ?? false;
  }

  set isLogin(bool value) {
    islogin = value;
    notifyListeners();
  }
}
