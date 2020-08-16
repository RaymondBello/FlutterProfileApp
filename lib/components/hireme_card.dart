import 'package:flutter/material.dart';

import '../constants.dart';
import 'default_button.dart';



class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding*2),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow]
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/email.png", 
            height: 70,
            width: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(
                thickness: 3, 
                color: Colors.lightGreen[100],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recruiting?",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: kTextColor
                  ),
                ),
                SizedBox(height: kDefaultPadding/3), //Text Padding
                Text(
                  "Skillset and Core Strengths shown in CV",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: kTextColor
                  ),
                )
              ],
            ),
          ),
          DefaultButton(
            text: "Hire Me",
            imageSrc: "assets/images/hand.png",
            press: (){},
          ),
        ],
      ),
    );
  }
}