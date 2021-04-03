import 'package:artemisfood/src/domain/models/usuario.dart';
import 'package:artemisfood/src/domain/models/producto.dart';
import 'package:artemisfood/src/domain/repositories/products_repository_interface.dart';

class ProductsRepositoryImpl extends ProductsRepositoryInterface {
  @override
  Future<List<Producto>> getProducts() async {
    // TODO: implement getProducts
    await Future.delayed(const Duration(seconds: 3)); // Fake await to server
    return products;
  }

  @override
  Future<List<Producto>> getUserFavs(Usuario user) {
    // TODO: implement getUserFavs
    throw UnimplementedError();
  }
}
