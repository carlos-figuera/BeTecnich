import 'package:app_hazconta/app/data/models/RequestToken.dart';

import 'package:app_hazconta/app/data/providers/local/local_user.dart';
import 'package:app_hazconta/app/data/repository/local/local_auth_repository.dart';
import 'package:app_hazconta/app/data/repository/remote/autentication_repository.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final AuthenticationRepository _authenticationRepository =
  Get.find<AuthenticationRepository>();
  final LocalAuthRepository _localAuthRepository =
  Get.find<LocalAuthRepository>();

  final LocalUser _localUser = Get.find<LocalUser>();


  String _email = '', _pass = ' ';
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  GlobalKey<FormState> formKey = GlobalKey();

  set isLoading(bool value) {
    _isLoading = value;
    update(['formLogin']);
  }

  void onEmailChanged(String text) {
    _email = text;
  }

  String? onEmailValidator(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value ?? '')
        ? null
        : 'El valor ingresado no es un correo';
  }

  void onPassChanged(String text) {
    _pass = text;
  }

  String? onPassValidator(String? value) {
    if (value != null && value.length >= 1) return null;
    return 'Ingresa una contraseña valida';
  }

  Future<void> validateForm(BuildContext context) async {
    if (isLoading == true) return null;

    FocusScope.of(context).unfocus();
    if (formKey.currentState?.validate() ?? false) {
      return submit();
    }
  }

  Future<void> submit() async {
    isLoading = true;
    try {
      final RequestToken resp = await _authenticationRepository.newRequestToken(
        userEmail: _email,
        userPassword: _pass,
      );

    } catch (e) {
      String message = "";

      if (e is DioError) {
        if (e.response != null) {
          message = '👮‍♂️🚨Tus credenciales no son las correctas... 🚨👮‍♂️';
        } else {
          message = '💀 Tenemos problemas con la conexion 📵';
        }
      }
      isLoading = false;
      Get.dialog(AlertDialog(
        title: Text("Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text("OK"),
          )
        ],
      ));
    }
  }
}