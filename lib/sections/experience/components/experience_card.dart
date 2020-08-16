import 'package:flutter/material.dart';
import 'package:web_app/models/Service.dart';

import '../../../constants.dart';



class ExperienceCard extends StatefulWidget {
  const ExperienceCard({
    Key key, this.index,
  }) : super(key: key);

  final int index;

  @override
  _ExperienceCardState createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 100);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
          color: services[widget.index].color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all(kDefaultPadding *1.2), //edit this value to scale experience icon
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle, //Change to circle for circular experience icons
                borderRadius: BorderRadius.circular(15), // if shape is circle, comment this line out.
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.2)),
                ],
              ),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              services[widget.index].title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              services[widget.index].subtitle,
              style: TextStyle(
                fontSize: 14,
                color: kTextColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
