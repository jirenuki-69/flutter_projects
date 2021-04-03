import 'package:flutter/foundation.dart';

class SignUpRequest {
  const SignUpRequest({
    @required this.username,
    @required this.password,
  });

  final String username;
  final String password;
}
