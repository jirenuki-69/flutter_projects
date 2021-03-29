import 'package:ebodasmovil/constants/citas.dart';
import 'package:ebodasmovil/models/Cita.dart';
import 'package:ebodasmovil/screens/FormularioCita/formulario_cita.dart';
import 'package:ebodasmovil/screens/Home/components/add_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../route_builder.dart';
import 'components/cita.dart';

class Citas extends StatefulWidget {
  const Citas({Key key}) : super(key: key);

  @override
  _CitasState createState() => _CitasState();
}

class _CitasState extends State<Citas> {
  ScrollController _scrollController;
  double offSetPerItem = 0;
  final double itemHeight = 160;
  final double dividerHeight = 20;

  void _onScroll() {
    setState(() {
      offSetPerItem = _scrollController.offset / (itemHeight + dividerHeight);
    });
  }

  @override
  void initState() {
    _scrollController = new ScrollController()..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddButton(
          onPress: () => Navigator.push(
            context,
            CustomPageRouteBuilder(
              routeName: FormularioCita.routeName,
              page: FormularioCita(),
            ),
          ),
          text: 'Solicitar una cita',
        ),
        Expanded(
          child: ListView.separated(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            itemCount: citas.length,
            itemBuilder: (_, index) {
              final Cita cita = citas[index];
              double opacity = 1.0;

              opacity = index + 1 - offSetPerItem;
              if (opacity > 1)
                opacity = 1;
              else if (opacity < 0) opacity = 0;

              return Opacity(
                opacity: opacity,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.identity()
                    ..scale(
                      opacity.clamp(
                        0.2,
                        1,
                      ),
                      opacity,
                    ),
                  child: CitaItem(
                    cita: cita,
                    itemHeight: itemHeight,
                  ),
                ),
              );
            },
            separatorBuilder: (context, __) {
              return Divider(
                height: dividerHeight,
                color: Theme.of(context).primaryColorLight,
                thickness: 1,
              );
            },
          ),
        ),
      ],
    );
  }
}
