import 'package:flutter/material.dart';
import 'package:web_app/models/Feedback.dart';

import '../../../constants.dart';

class DevelopmentCard extends StatefulWidget {
  const DevelopmentCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _DevelopmentCardState createState() => _DevelopmentCardState();
}

class _DevelopmentCardState extends State<DevelopmentCard> {
  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -40),
              child: AnimatedContainer(
                duration: duration,
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  boxShadow: [if (!isHover) kDefaultCardShadow],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              style: TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  height: 1.5),
            ),
            SizedBox(height: kDefaultPadding * 2),
            Text(
              feedbacks[widget.index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
