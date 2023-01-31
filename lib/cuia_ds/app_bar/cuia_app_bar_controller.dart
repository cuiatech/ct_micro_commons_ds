// ignore_for_file: depend_on_referenced_packages

import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_auth/app/domain/usecases/user_current_usecase.dart';
import 'package:flut_micro_commons_auth/app/domain/models/dtos/user_dto_dto.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

final $CuiaAppBarController = Bind.singleton(
  (i) => CuiaAppBarController(i()),
  export: true,
);

class CuiaAppBarController {
  CuiaAppBarController(this._userCurrentUsecase);

  final UserCurrentUsecase _userCurrentUsecase;

  Future<UserDto?> init() async {
    try {
      var res = await _userCurrentUsecase();
      return res.data;
    } catch (e) {
      logout();
      return null;
    }
  }

  Future<void> openProfile() async {
    // ignore: avoid_print
    print("Perfil is selected.");
  }

  Future<void> openSettings() async {
    // ignore: avoid_print
    print("Configurações is selected.");
  }

  Future<void> logout() async {
    await LocalStorage.erase();
    Modular.to.pushReplacementNamed("/");
  }
}