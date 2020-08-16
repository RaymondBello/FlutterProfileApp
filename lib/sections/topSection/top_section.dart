// import 'dart:ui';

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
// import 'components/glass_content.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 1000, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/chip4.jpg"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding * 2.5,
        ),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Spacer(),
            Positioned(
              bottom: 250,
              right: 150,
              child: PersonPic(),
            ),
            Positioned(
              bottom: 0,
              child: Menu(),
            ),
          ],
        ),
      ),
    );
  }
}

