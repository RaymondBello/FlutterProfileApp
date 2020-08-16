import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title,subtitle, image;
  final Color color;

  Service({this.id, this.title, this.subtitle, this.image, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "ASIC Design and Verification Intern Engineer",
    subtitle: "Ciena, Ottawa\n2020 - 2020",
    image: "assets/images/graphic.png",
    color: Colors.deepOrange[100],
  ),
  Service(
    id: 2,
    title: "Printing Services Technician",
    subtitle:"The Printing House, Ottawa\nSummer 2019",
    image: "assets/images/desktop.png",
    color: Colors.lightGreen[200],
  ),
  Service(
    id: 3,
    title: "Technical Sales Representative",
    subtitle: "Incredible Connection, Johannesburg\nSummer 2017 & 2018",
    image: "assets/images/ui.png",
    color: Colors.cyan[100],
  ),
  Service(
    id: 4,
    title: "BASc Electrical Engineering and Computer Technology",
    subtitle: "University of Ottawa, Ottawa\n2015 - 2021",
    image: "assets/images/Intreaction_design.png",
    color: Colors.red[100],
  ),
  Service(
    id: 5,
    title: "Ontario Secondary School Diploma",
    subtitle: "Southern Ontario College, Hamilton\n2013 - 2015",
    image: "assets/images/Intreaction_design.png",
    color: Colors.lightGreen[200],
  ),
];