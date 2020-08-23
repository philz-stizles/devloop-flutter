import 'package:devloop_flutter/utils/pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FBButton extends StatelessWidget {
  final String buttonText;
  final Function onSubmit;
  final Color color;

  FBButton(this.buttonText, this.color, this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: SizedBox(
          width: double.infinity,
          child: RaisedButton(
              child: Text(
                buttonText,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              color: color,
              disabledColor: Color(0xff713533),
              textColor: Colors.white,
              disabledTextColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              onPressed: () => onSubmit())),
    );
  }
}

class FBBarButton extends StatelessWidget {
  final String buttonText;
  final Function onSubmit;
  final Color bgColor;
  final Color txtColor;

  FBBarButton(this.buttonText, this.bgColor, this.txtColor, this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5),
        child: RaisedButton(
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 14.0, color: Colors.white),
            ),
            color: bgColor,
            disabledColor: bgColor,
            textColor: txtColor,
            disabledTextColor: txtColor,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            onPressed: () => onSubmit()));
  }
}

class FlexButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final Color bgColor;
  final Color txtColor;

  FlexButton({
    @required this.buttonText, 
    @required this.bgColor, 
    this.txtColor, 
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 14.0, color: txtColor),
        ),
        color: bgColor,
        disabledColor: bgColor,
        textColor: txtColor,
        disabledTextColor: txtColor,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        onPressed: () => onPressed());
  }
}

class SpinnerButton extends StatelessWidget {
  final bool loading;
  final String buttonText;
  final Function onPressed;
  final Color bgColor;
  final Color txtColor;

  SpinnerButton({
    @required this.loading,
    @required this.buttonText, 
    @required this.bgColor, 
    this.txtColor, 
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: (loading) 
          ? SizedBox(
            height: 15.0,
            width: 15.0,
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
              backgroundColor: Theme.of(context).primaryColor,
              valueColor: new AlwaysStoppedAnimation<Color>(Pallete.lightGrey)
            ))
          : Text(buttonText, style: TextStyle(fontSize: 14.0, color: txtColor)),
        color: bgColor,
        disabledColor: bgColor,
        textColor: txtColor,
        disabledTextColor: txtColor,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        onPressed: () => onPressed());
  }
}
