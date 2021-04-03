import 'package:artemisfood/src/domain/models/usuario.dart';

class SignUpResponse {
  const SignUpResponse(
    this.token,
    this.user,
  );

  final String token;
  final Usuario user;
}