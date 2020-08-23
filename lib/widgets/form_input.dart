import 'package:devloop_flutter/utils/pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlinedInput extends StatelessWidget {
  final dynamic initialValue;
  final String text;
  final String name;
  final Function save;
  final Function validate;
  final IconData icon;
  final TextInputType type;

  OutlinedInput(this.initialValue, this.type, this.icon, this.text, this.name,
      this.save, this.validate);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15.0),
        padding: EdgeInsets.all(0.0),
        // decoration: BoxDecoration(
        //   border: Border(
        //     bottom: BorderSide(
        //       style: BorderStyle.solid,
        //       color: Theme.of(context).primaryColor,
        //       width: 1.0))
        // ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
            Widget>[
          Expanded(
            flex: 1,
            child: Icon(icon, color: Theme.of(context).primaryColor),
          ),
          Expanded(
              flex: 5,
              child: Container(
                child: TextFormField(
                  maxLines: (type == TextInputType.multiline) ? 4 : 1,
                    initialValue: initialValue,
                    obscureText:
                        (type == TextInputType.visiblePassword) ? true : false,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        errorStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        border: InputBorder.none,
                        hintText: text,
                        fillColor: Color(0xfff3f3f4),
                        filled: true),
                    validator: (String newValue) => validate(text, newValue),
                    onSaved: (String newValue) => save(name, newValue)),
                // child: TextFormField(
                //     cursorWidth: 2,
                //     keyboardType: type,
                //     style: TextStyle(
                //       // fontFamily: widget.fontFamily,
                //       // fontStyle: widget.fontStyle,
                //       // fontWeight: widget.fontWeight,
                //       // wordSpacing: widget.wordSpacing,
                //       // textBaseline: widget.textBaseline,
                //       // color: widget.textColor,
                //     ),
                //     // focusNode: widget.focusNode,
                //     // enabled: widget.enabled,
                //     // maxLength: widget.maxLength,
                //     onTap: () => save(),
                //     textInputAction: TextInputAction.done,
                //     decoration: InputDecoration(
                //       // hintStyle: TextStyle(color: widget.textColor),
                //       hintText: text,
                //       border: InputBorder.none),
                //       // cursorColor:
                //       //     isFocus ? widget.accentColor : widget.backgroundColor,
                // )
              ))
        ]));
  }
}

class FBTextInput extends StatelessWidget {
  final String text;
  final String name;
  final Function save;
  final Function validate;
  final TextInputType type;

  FBTextInput(this.type, this.text, this.name, this.save, this.validate);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              hintText: text,
              fillColor: Color(0xfff3f3f4),
              filled: true),
          validator: (String newValue) => validate(name, newValue),
          onSaved: (String newValue) => save(name, newValue)),
    );
  }
}

class FBTextFormField extends StatelessWidget {
  final String text;
  final String name;
  final Function save;
  final Function validate;
  final TextInputType type;

  FBTextFormField(this.type, this.text, this.name, this.save, this.validate);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
          style: TextStyle(fontSize: 14.0),
          autofocus: true,
          textAlign: TextAlign.left,
          keyboardType: type,
          decoration: InputDecoration(
            errorStyle: TextStyle(color: Theme.of(context).primaryColor),
              border: InputBorder.none,
              hintText: text,
              fillColor: Color(0xffffffff),
              filled: true
          ),
          validator: (String value) => validate(text, value),
          onSaved: (String value) => save(name, value)),
    );
  }
}

class LabelledInput extends StatelessWidget {
  final dynamic initialValue;
  final String text;
  final String name;
  final Function save;
  final Function validate;
  final TextInputType type;

  LabelledInput(this.initialValue, this.type, this.text, this.name, this.save, 
    this.validate);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
        child: TextFormField(
            maxLines: (type == TextInputType.multiline) ? 5 : 1,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, 
              color: Colors.black45),
            textAlign: TextAlign.left,
            keyboardType: type,
            decoration: InputDecoration(
              labelText: text,
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                errorStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        border: InputBorder.none,
                fillColor: Pallete.lightGrey,
                filled: true),
            validator: (String value) => validate(name, value),
            onSaved: (String value) => save(name, value)));
  }
}

class CheckboxInput extends StatelessWidget {
  final String text;
  final String name;
  final Function save;
  final Function validate;
  final TextInputType type;

  CheckboxInput(this.type, this.text, this.name, this.save, this.validate);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
            maxLines: (type == TextInputType.multiline) ? 5 : 1,
            style: TextStyle(fontSize: 14.0),
            autofocus: true,
            textAlign: TextAlign.left,
            keyboardType: type,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 20.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Color(0xffbfbfbf), width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                labelText: text,
                fillColor: Color(0xffffffff),
                filled: true),
            validator: validate,
            onSaved: save));
  }
}
