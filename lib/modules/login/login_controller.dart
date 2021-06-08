import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart' as mobx;
import 'package:mobx/mobx.dart';

import 'package:split_it/modules/login/login_service.dart';

import 'login_state.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with mobx.Store {
  @mobx.observable
  LoginState state = LoginStateEmpty();

  final LoginService service;

  _LoginControllerBase({
    required this.service,
  });

  @mobx.action
  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();

      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
    }
  }
}
