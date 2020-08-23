import 'package:flutter/material.dart';

class ActionStatusSnackBar extends StatelessWidget {
  final String message;
  final Color bgColor;
  final Color actionColor;
  final Function onPressed;

  ActionStatusSnackBar({
    @required this.message, 
    this.actionColor, 
    this.bgColor,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(message),
      backgroundColor: bgColor,
      duration: Duration(minutes: 1),
      action: SnackBarAction(
        label: 'Ok',
        textColor: actionColor,
        onPressed: onPressed
      )
    );
  }
}
