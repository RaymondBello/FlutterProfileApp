import 'package:flutter/material.dart';

import '../../../constants.dart';


class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key key,
    this.numOfExp,
  }) : super(key: key);

  final String numOfExp;

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(maxHeight: 240, maxWidth: 255),
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding * 0.55),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: Colors.lightGreen[300], //Check this out
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.lightGreen[500], //Check this out
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 6,
                color:
                    Colors.lightGreen[700].withOpacity(0.80), //Check this out
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6.5
                      ..color = Colors.lightGreen[800].withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 13),
                        blurRadius: 10,
                        color: Colors.lightGreen[700].withOpacity(1),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              "Years of Experience",
              style: TextStyle(
                color: Colors.lightGreen[800],
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}