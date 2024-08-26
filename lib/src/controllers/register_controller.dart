import 'package:flutter/material.dart';

class RegisterController {
  // Flutter
  final key = GlobalKey<ScaffoldState>();
  BuildContext? context;
  Function? refresh;

  // Datos del usuario
  final fullNames = TextEditingController();
  final age = TextEditingController();
  String? gender;
  final phoneNumber = TextEditingController();
  List<String>? interest;
  final email = TextEditingController();
  final password = TextEditingController();
  final repeatPassword = TextEditingController();

  Future init(BuildContext context, Function refresh) async{
    this.context = context;
    this.refresh = refresh;
  }
}
