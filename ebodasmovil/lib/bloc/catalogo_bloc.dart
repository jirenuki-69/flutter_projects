import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:flutter/cupertino.dart';

class CatalogoBloc extends ChangeNotifier {
  Proveedor proveedorSeleccionado = portafolio.first;
  List<Proveedor> proveedoresFiltrados = portafolio;
  String categoriaSeleccionada = 'Todos';
  bool loading = false;

  void cambioProveedor(Proveedor proveedor) {
    if (proveedorSeleccionado.id != proveedor.id) {
      proveedorSeleccionado = proveedor;
      notifyListeners();
    }
  }

  void filtrarProveedoresCategoria(String categoria) {
    if (categoria != 'Todos') {
      proveedoresFiltrados = portafolio
        .where((proveedor) => proveedor.categoria.contains(categoria))
        .toList();
      proveedoresFiltrados.forEach((element) => print(element.nombre));
    } else {
      proveedoresFiltrados = portafolio;
    }
    Future.delayed(const Duration(seconds: 1), () {
      loading = false;
      notifyListeners();
    });
    notifyListeners();
  }

  void cambiarCategoria(String categoria) {
    if (categoriaSeleccionada != categoria) {
      loading = true;
      categoriaSeleccionada = categoria;
      notifyListeners();
      filtrarProveedoresCategoria(categoria);
    }
  }
}
