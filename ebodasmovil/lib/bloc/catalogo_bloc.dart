import 'package:ebodasmovil/models/Proveedor.dart';
import 'package:flutter/cupertino.dart';

class CatalogoBloc extends ChangeNotifier {
  Proveedor proveedorSeleccionado = portafolio.first;

  void cambioProveedor(Proveedor proveedor) {
    if (proveedorSeleccionado.id != proveedor.id) {
      proveedorSeleccionado = proveedor;
      notifyListeners();
    }
  }
}
