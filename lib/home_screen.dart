import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/sections/about/about_section.dart';
import 'package:web_app/sections/contact/contact_section.dart';
import 'package:web_app/sections/development/development_section.dart';
import 'package:web_app/sections/experience/experience_section.dart';
import 'package:web_app/sections/portfolio/portfolio_section.dart';
import 'package:web_app/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding*2),
            AboutSection(),
            ExperienceSection(),
            PortfolioSection(),
            DevelopmentSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
            //Size box for development
            SizedBox(height: 500),
          ],
        ) ,
      ),
    );
  }
}
