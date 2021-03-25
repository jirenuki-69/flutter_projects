import 'package:ebodasmovil/screens/components/primary_button.dart';
import 'package:flutter/material.dart';

class NoInfo extends StatelessWidget {
  const NoInfo({
    Key key,
    @required this.message,
    @required this.onPressed,
    @required this.buttonMessage,
    this.isDate = false,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String message;
  final String buttonMessage;
  final bool isDate;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.only(top: constraints.maxWidth * 0.4,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                message,
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              PrimaryButton(
                onPressed: onPressed,
                text: buttonMessage,
                width: width * 0.7,
              ),
            ],
          ),
        );
      }
    );
  }
}
