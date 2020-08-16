import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque malesuada augue ligula, tincidunt sodales justo commodo pretium. Cras convallis orci posuere, sodales lectus nec, condimentum elit. Aliquam accumsan lorem varius.",
                ),
              ),
          //     // Years of Experience
              ExperienceCard(numOfExp: "2"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque malesuada augue ligula, tincidunt sodales justo commodo pretium. Cras convallis orci posuere, sodales lectus nec, condimentum elit. Aliquam accumsan lorem varius.",
                ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Contact",
                press: () {
                  // Write function to go to page
                },
              ),
              SizedBox(width: kDefaultPadding*1.5,),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: (){
                  // Write function here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
