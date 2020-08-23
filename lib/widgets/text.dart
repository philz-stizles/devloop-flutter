import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClickableTextLink extends StatelessWidget {
  final String text;
  final Function onPress;
  final Color color;

  ClickableTextLink({
    @required this.text, 
    @required this.color, 
    @required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: InkWell(
        enableFeedback: false,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(text, style: TextStyle(
            color: color, 
            decoration: TextDecoration.underline
          ))
        ),
        onTap: () => onPress(context)
      )
    );
  }
}
