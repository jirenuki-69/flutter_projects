import 'package:artemisfood/src/domain/models/usuario.dart';
import 'package:artemisfood/src/domain/request/login_request.dart';
import 'package:artemisfood/src/domain/response/login_response.dart';

abstract class ApiRepositoryInterface {
  Future<Usuario> getUserFromToken(String token);
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<void> logout(String token);
}