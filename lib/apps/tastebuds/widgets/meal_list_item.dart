import 'package:devloop_flutter/apps/tastebuds/models/meal.dart';
import 'package:devloop_flutter/apps/tastebuds/screens/meals_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealListItem extends StatelessWidget {
  final Meal meal;
  MealListItem(this.meal);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MealsScreen(),
              // settings: RouteSettings(arguments: {'id': id, 'title': title})
            )),
        child: InkWell(
          onTap: () => null,
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 4,
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                          child: Image.network(
                            meal.imageUrl,
                            width: double.infinity,
                            height: 200.0,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          )),
                      Positioned(
                          left: 10,
                          bottom: 20,
                          child: Container(
                            width: 300.0,
                            color: Colors.black45,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            child: Text(meal.title,
                                style: TextStyle(
                                    fontSize: 26.0, color: Colors.white),
                                softWrap:
                                    true, // Text will wrap into its container if it is too long
                                overflow: TextOverflow
                                    .fade // Incase it doesnt fit into its
                                // box even with wrappingbwill just fade out
                                ),
                          ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.schedule),
                            SizedBox(
                              width: 6,
                            ),
                            Text('${meal.duration} min')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.work),
                            SizedBox(
                              width: 6,
                            ),
                            Text('${meal.complexityText}')
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.attach_money),
                            SizedBox(
                              width: 6,
                            ),
                            Text('${meal.affordabilityText}')
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
