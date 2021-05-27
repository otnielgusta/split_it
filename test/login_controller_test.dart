import 'package:flutter_test/flutter_test.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class LoginServiceMock implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    // TODO: implement googleSignIn
    return UserModel(id: "id", email: "otnielsilvag4@gmail.com");
  }
}

void main() {
  late LoginController controller;
  setUp(() {
    controller = LoginController(service: LoginServiceMock(), onUpdate: () {});
  });
  test("Testando o Google SignIn retornando Sucesso", () {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    controller.googleSignIn();

    expect(controller.state, isInstanceOf<LoginStateSuccess>());
  });
}
