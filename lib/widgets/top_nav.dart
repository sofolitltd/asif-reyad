import 'package:flutter/material.dart';
import '/widgets/logo.dart';

import 'button_nav.dart';

class TopNav extends StatelessWidget {
  final GlobalKey itemKeyHome;
  final GlobalKey itemKeyAbout;
  final GlobalKey itemKeySkills;
  final GlobalKey itemKeyServices;

  const TopNav({
    Key? key,
    required this.itemKeyHome,
    required this.itemKeyAbout,
    required this.itemKeySkills,
    required this.itemKeyServices,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          GestureDetector(
              onTap: () async {
                final context = itemKeyHome.currentContext;

                await Scrollable.ensureVisible(context!,
                    duration: const Duration(seconds: 1));
              },
              child: const Logo()),

          // nav buttons
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(children: [
              NavButton(label: 'Home', itemKey: itemKeyHome),
              NavButton(label: 'About', itemKey: itemKeyAbout),
              NavButton(label: 'Skills', itemKey: itemKeySkills),
              NavButton(label: 'Services', itemKey: itemKeyServices),
            ]),
          )
        ],
      ),
    );
  }
}
