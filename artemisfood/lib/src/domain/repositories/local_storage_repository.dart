import 'package:artemisfood/src/domain/models/usuario.dart';

abstract class LocalStorageInterface {
  Future<String> getToken();
  Future<String> saveToken(String token);
  Future<void> clearAllData();
  Future<Usuario> saveUser(Usuario usuario);
  Future<Usuario> getUser();
  Future<void> saveDarkMode(bool darkMode);
  Future<bool> isDarkMode();
}