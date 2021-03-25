import 'package:ebodasmovil/screens/components/cancel_button.dart';
import 'package:ebodasmovil/screens/components/logo_header.dart';
import 'package:ebodasmovil/screens/components/primary_button.dart';
import 'package:ebodasmovil/screens/components/secondary_button.dart';
import 'package:flutter/material.dart';

class FormTemplate extends StatelessWidget {
  final List<Widget> children;
  final VoidCallback onMainPress;
  final VoidCallback onSecondaryPress;
  final VoidCallback onCancelPress;
  final String mainButtonText;
  final String secondaryButtonText;
  final String cancelButtonText;
  final bool cancelButton;
  const FormTemplate({
    Key key,
    @required this.children,
    @required this.onMainPress,
    @required this.onSecondaryPress,
    @required this.mainButtonText,
    @required this.secondaryButtonText,
    this.cancelButton = false,
    this.onCancelPress,
    this.cancelButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              LogoHeader(),
              Column(
                children: children,
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                onPressed: onMainPress,
                text: mainButtonText,
                width: width * 0.6,
              ),
              SecondaryButton(
                onPressed: onSecondaryPress,
                text: secondaryButtonText,
                width: width * 0.6,
              ),
              const SizedBox(height: 10),
              !cancelButton
                ? SizedBox.shrink()
                : CancelButton(
                onPressed: onCancelPress,
                text: cancelButtonText,
                width: width * 0.4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
