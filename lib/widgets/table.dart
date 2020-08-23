import 'package:flutter/material.dart';

class FBTableCell extends StatelessWidget {
  final String cellText;
  final Color txtColor;

  FBTableCell(this.cellText, this.txtColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
      child: Text(cellText,
        style: TextStyle(color: txtColor, fontWeight: FontWeight.w500)));
  }
}

class TableGestureCell extends StatelessWidget {
  final String cellText;
  final Color txtColor;
  final Function onTapped;

  TableGestureCell(this.cellText, this.txtColor, this.onTapped);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: GestureDetector(
            onTap: () => onTapped(),
            child: Text(cellText,
                style: TextStyle(
                    color: txtColor,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center)));
  }
}

class TableIconCell extends StatelessWidget {
  final IconData icon;
  final Color txtColor;
  final Function onTapped;

  TableIconCell(this.icon, this.txtColor, this.onTapped);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: GestureDetector(
          onTap: () => onTapped(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
            icon,
            size: 14.0,)
          ),
        ));
  }
}
