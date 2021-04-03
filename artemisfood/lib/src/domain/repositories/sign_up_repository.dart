import 'package:artemisfood/src/domain/models/usuario.dart';
import 'package:artemisfood/src/domain/request/sign_up_request.dart';
import 'package:artemisfood/src/domain/response/sign_up_response.dart';

abstract class SignUpRepositoryInterface {
  Future<SignUpResponse> signUp(SignUpRequest signUpRequest);
  Future<Usuario> createUserFromResponse(SignUpResponse signUpResponse);
}