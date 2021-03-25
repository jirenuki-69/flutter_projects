import 'package:ebodasmovil/constants/citas.dart';
import 'package:ebodasmovil/models/Cita.dart';
import 'package:ebodasmovil/screens/Home/components/add_button.dart';
import 'package:ebodasmovil/screens/components/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/cita.dart';

class Citas extends StatelessWidget {
  const Citas({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        top: 10,
      ),
      child: Column(
        children: [
          AddButton(
            onPress: () => {},
            text: 'Solicitar una cita',
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: citas.length,
              itemBuilder: (context, index) {
                final Cita cita = citas[index];
                return CitaItem(cita: cita);
              },
              separatorBuilder: (context, __) {
                return Divider(
                  height: 20,
                  color: Theme.of(context).primaryColorLight,
                  thickness: 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
