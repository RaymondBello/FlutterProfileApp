import 'package:flutter/material.dart';

import '../../../constants.dart';


class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About \nme", 
        style: Theme.of(context)
        .textTheme
        .headline2
        .copyWith(fontWeight: FontWeight.bold, color: kTextColor),
        ),
        SizedBox(height: kDefaultPadding * 2),
        // Image.asset("assets/images/sign.png"),
      ],
    );
  }
}