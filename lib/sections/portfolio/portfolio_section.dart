import 'package:flutter/material.dart';
import 'package:web_app/components/hireme_card.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/models/RecentWork.dart';
import 'components/recent_work_card.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 7),
      width: double.infinity,
      // for tesing
      // height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.lightGreen[300].withOpacity(0.2),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: "Portfolio",
            subTitle: "Recent Projects",
            color: Colors.cyan[100],
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 1.5,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorkCard(
                  index: index,
                  press: () {},
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 4),
        ],
      ),
    );
  }
}
