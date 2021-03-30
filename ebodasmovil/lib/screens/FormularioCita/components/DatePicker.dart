import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DateTime _dateTime;
    return InkWell(
      onTap: () => showDatePicker(
        context: context,
        initialDate: _dateTime == null ? DateTime.now() : _dateTime,
        firstDate: DateTime.now(),
        lastDate: DateTime(
          DateTime.now().year + 10,
        ),
      ).then((datePicked) {
        setState(() {
          _dateTime = datePicked;
        });
        print(_dateTime);
      }),
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
          prefixIcon: Icon(
            CupertinoIcons.calendar,
            color: Theme.of(context).iconTheme.color,
          ),
          alignLabelWithHint: true,
          labelText: 'Fecha',
        ),
      ),
    );
  }
}
