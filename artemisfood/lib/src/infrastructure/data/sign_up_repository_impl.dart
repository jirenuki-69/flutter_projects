import 'package:artemisfood/src/domain/exception/sign_up_exception.dart';
import 'package:artemisfood/src/domain/models/usuario.dart';
import 'package:artemisfood/src/domain/repositories/sign_up_repository.dart';
import 'package:artemisfood/src/domain/response/sign_up_response.dart';
import 'package:artemisfood/src/domain/request/sign_up_request.dart';

class SignUpRepositoryImpl extends SignUpRepositoryInterface {
  @override
  Future<Usuario> createUserFromResponse(SignUpResponse signUpResponse) {
    //Se supone que aquí se crea el usuario en la bd
    Usuario user = signUpResponse.user;
    return Future.delayed(const Duration(seconds: 2), () => user);
  }

  @override
  Future<SignUpResponse> signUp(SignUpRequest signUpRequest) async {
    await Future.delayed(const Duration(seconds: 3));

    if (signUpRequest.username == 'migueluki69' &&
        signUpRequest.password == 'Homeruns') {
      return SignUpResponse(
        'AA111',
        Usuario(
          name: 'Miguel Fuentes',
          username: 'migueluki69',
          image: '',
        ),
      );
    } else if (signUpRequest.username == 'epichacker1' &&
        signUpRequest.password == 'deporte1') {
      return SignUpResponse(
        'AA111',
        Usuario(
          name: 'Víctor Moguel',
          username: 'epichacker1',
          image: '',
        ),
      );
    }

    throw SignUpException();
  }
}
