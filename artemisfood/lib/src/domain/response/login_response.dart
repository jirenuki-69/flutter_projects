import 'package:artemisfood/src/domain/models/usuario.dart';

class LoginResponse {
  const LoginResponse(
    this.token,
    this.user,
  );

  final String token;
  final Usuario user;
}
