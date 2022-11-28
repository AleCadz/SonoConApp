import 'package:flutter/cupertino.dart';

class LoginForm extends ChangeNotifier {
  String correo = "";
  String contrasena = "";
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
