import 'package:artemisfood/src/domain/models/producto.dart';
import 'package:artemisfood/src/domain/models/usuario.dart';

abstract class ProductsRepositoryInterface {
  Future<List<Producto>> getProducts();
  Future<List<Producto>> getUserFavs(Usuario user);
}
