import 'package:artemisfood/src/domain/exception/auth_exception.dart';
import 'package:artemisfood/src/domain/models/usuario.dart';
import 'package:artemisfood/src/domain/repositories/api_repository.dart';
import 'package:artemisfood/src/domain/response/login_response.dart';
import 'package:artemisfood/src/domain/request/login_request.dart';

class ApiRepositoryImpl extends ApiRepositoryInterface {
  //Servicios al backend

  @override
  Future<Usuario> getUserFromToken(String token) async {
    await Future.delayed(const Duration(seconds: 3));
    if (token == 'AA111') {
      return Usuario(
        name: 'Miguel Antonio',
        username: 'migueluki69',
        image: 'lib/assets/img/sova.png',
      );
    } else if (token == 'AA222') {
      return Usuario(
        name: 'Victor Moguel',
        username: 'epichacker1',
        image: 'lib/assets/img/reyna.jpg',
      );
    }

    throw AuthException();
  }

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    await Future.delayed(const Duration(seconds: 3));
    if (loginRequest.username == 'migueluki69' &&
        loginRequest.password == 'Homeruns') {
      return LoginResponse(
        'AA111',
        Usuario(
          name: 'Miguel Antonio',
          username: 'migueluki69',
          image: 'lib/assets/img/sova.png',
        ),
      );
    } else if (loginRequest.username == 'epichacker1' &&
        loginRequest.password == 'deporte1') {
      return LoginResponse(
        'AA222',
        Usuario(
          name: 'Victor Moguel',
          username: 'epichacker1',
          image: 'lib/assets/img/reyna.jpg',
        ),
      );
    }

    throw AuthException();
  }

  @override
  Future<void> logout(String token) async {
    print('removing token from server');
    return;
  }
}
