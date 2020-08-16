import 'package:flutter/material.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/Feedback.dart';
import 'package:web_app/models/Service.dart';

import 'components/development_card.dart';

class DevelopmentSection extends StatelessWidget {
  const DevelopmentSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "In Development",
            subTitle: "Projects",
            color: Colors.cyan[100],
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              feedbacks.length,
              (index) => DevelopmentCard(index: index),
            ),
          )
        ],
      ),
    );
  }
}
