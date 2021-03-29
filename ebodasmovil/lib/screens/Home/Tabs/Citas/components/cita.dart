import 'package:ebodasmovil/constants/const.dart';
import 'package:ebodasmovil/models/Cita.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../theme.dart';

class CitaItem extends StatelessWidget {
  const CitaItem({
    Key key,
    @required this.cita,
    @required this.itemHeight,
  }) : super(key: key);

  final Cita cita;
  final double itemHeight;

  @override
  Widget build(BuildContext context) {
    final double iconSize = 30;
    final caption = Theme.of(context).textTheme.caption;
    const widthSeparator = const SizedBox(width: 10);
    const heightSeparator = const SizedBox(height: 5);
    return Container(
      height: itemHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            cita.status.toString(),
            style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: cita.status == CitaStatus.confirmado
                  ? EbodasColors.green
                  : cita.status == CitaStatus.porConfirmar
                  ? EbodasColors.yellow
                  : EbodasColors.red,
              fontWeight: FontWeight.w600,
            ),
          ),
          heightSeparator,
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              CupertinoIcons.calendar,
                              color: Theme.of(context).iconTheme.color,
                              size: iconSize,
                            ),
                            widthSeparator,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  cita.fecha,
                                  style: caption,
                                ),
                                heightSeparator,
                                Text(
                                  cita.hora,
                                  style: caption,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              '$iconPath/LogoMeet.png',
                              width: iconSize,
                              height: iconSize,
                              fit: BoxFit.contain,
                            ),
                            widthSeparator,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Reunión en Google Meet',
                                    style: caption,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    cita.link,
                                    style: caption,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          '$imgPath/LogoNegroSecundario.png',
                          fit: BoxFit.contain,
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: FittedBox(
                          child: TextButton(
                            onPressed: () => {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  CupertinoIcons.link,
                                  size: iconSize / 2,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  'Ir a la reunión',
                                  style: caption.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            style: Theme.of(context).textButtonTheme.style.copyWith(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 0,
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                              animationDuration: const Duration(milliseconds: 400),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
