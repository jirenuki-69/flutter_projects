import 'package:flutter/material.dart';

class ProfileField extends StatelessWidget {
  const ProfileField({
    Key key,
    @required this.fieldTitle,
    @required this.fieldContent,
    @required this.onIconPress,
  }) : super(key: key);

  final String fieldTitle;
  final String fieldContent;
  final VoidCallback onIconPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                fieldTitle,
                style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              const SizedBox(height: 10.0),
              Text(
                fieldContent,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: onIconPress,
          ),
        ],
      ),
    );
  }
}