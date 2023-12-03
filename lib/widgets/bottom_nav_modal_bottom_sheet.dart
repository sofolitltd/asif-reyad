import 'package:flutter/material.dart';

import 'bottom_nav_button.dart';

class BottomNavModalBottomSheet extends StatelessWidget {
  final GlobalKey itemKeyHomeM;
  final GlobalKey itemKeyAboutM;
  final GlobalKey itemKeySkills;
  final GlobalKey itemKeyServices;

  const BottomNavModalBottomSheet(
      {Key? key,
      required this.itemKeyHomeM,
      required this.itemKeyAboutM,
      required this.itemKeySkills,
      required this.itemKeyServices})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // top divider
        Container(
          width: 100,
          height: 5,
          margin: const EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        // bottom nav grid
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  BottomNavButton(
                      newContext: context,
                      label: 'Home',
                      iconName: "home.svg",
                      itemKey: itemKeyHomeM),
                  BottomNavButton(
                      newContext: context,
                      label: 'About',
                      iconName: "user.svg",
                      itemKey: itemKeyAboutM),
                ],
              ),
              Row(
                children: [
                  BottomNavButton(
                      newContext: context,
                      label: 'Skills',
                      iconName: 'skills.svg',
                      itemKey: itemKeySkills),
                  BottomNavButton(
                      newContext: context,
                      label: 'Services',
                      iconName: "bag.svg",
                      itemKey: itemKeyServices),
                ],
              ),
            ],
          ),
        ),

        // close button
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.clear)),
        ),
      ],
    );
  }
}
