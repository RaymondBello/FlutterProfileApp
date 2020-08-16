import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/section_title.dart';
import 'package:web_app/constants.dart';

import 'components/social_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Colors.cyan[100],
          ),
          ContactBox(),
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                color: Colors.blue[100],
                name: "Raymond Bello",
                iconSrc: "assets/images/linkedin (1).png",
                press: () {},
              ),
              SocialCard(
                color: Colors.red[100],
                name: "Raymondbello11@gmail.com",
                iconSrc: "assets/images/gmail.png",
                press: () {},
              ),
              SocialCard(
                color: Colors.lightBlue[100],
                name: "RaymondBello",
                iconSrc: "assets/images/github (1).png",
                press: () {},
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Your Name", hintText: "Enter Your Name"),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Email Address", hintText: "Enter Your Email"),
            ),
          ),
          SizedBox(
            // height: 300,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                  labelText: "Description", hintText: "Write some description"),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Send",
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
