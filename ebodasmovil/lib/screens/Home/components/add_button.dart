import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key key,
    @required this.onPress,
    @required this.text,
  }) : super(key: key);

  final VoidCallback onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 250,
            height: 50,
            child: ElevatedButton(
              onPressed: onPress,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    CupertinoIcons.add,
                    color: Theme.of(context).iconTheme.color,
                    size: 20,
                  ),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
