import 'package:flutter/foundation.dart';

enum CitaStatus {
  confirmado,
  porConfirmar,
  cancelada,
}

class Cita {
  String id;
  String fecha;
  String hora;
  String link;
  CitaStatus status;

  Cita({
    @required this.id,
    @required this.fecha,
    @required this.hora,
    @required this.link,
    @required this.status,
  });
}
