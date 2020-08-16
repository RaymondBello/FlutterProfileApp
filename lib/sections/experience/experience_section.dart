import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Service.dart';

import 'components/experience_card.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding *2),
      constraints: BoxConstraints(maxWidth: 1350), // Experience List Width Size *EDIT*
      child: Column(
        children: [
          SectionTitle(
            subTitle: "Recent Experience",
            title: "Experience and Education",
            color: Colors.cyan[100],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              services.length, (index) => ExperienceCard(index: index)
            ),
          ),
        ],
      ),
    );
  }
}
