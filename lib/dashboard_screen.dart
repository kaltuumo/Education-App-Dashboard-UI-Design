import 'package:education_app_dashboard_ui_design/conatiner_card.dart';
import 'package:education_app_dashboard_ui_design/gridView.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
  List catesName = [
    "Classes",
    "Category",
    "Courses",
    "Book Store",
    "Live Courses",
    "Leader Board",
  ];
  List<Color> cateColors = [
    Colors.pink,
    Colors.blueAccent,
    Colors.deepOrange,
    Colors.purple,
    Colors.green,
    const Color.fromARGB(255, 179, 179, 43),
  ];

  List<IconData> cateIcons = [
    Icons.emoji_events,
    Icons.category,
    Icons.play_circle_fill,
    Icons.store,
    Icons.video_library,
    Icons.assessment,
  ];
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(children: [ConatinerCard()]),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2.7,
              ),
              child: Gridview(
                catesName: catesName,
                cateColors: cateColors,
                cateIcons: cateIcons,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
