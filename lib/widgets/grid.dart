import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigatorGridItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String route;

  NavigatorGridItem(this.icon, this.label, this.route);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 5),
                    blurRadius: 1.0,
                    spreadRadius: 1.0)
              ],
              // color: Colors.white
            ),
            child: GridTile(
              child: Icon(
                icon,
                size: 50.0,
                color: Colors.purpleAccent,
              ),
              footer: Container(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                alignment: Alignment.center,
                child: Text(
                  label,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
