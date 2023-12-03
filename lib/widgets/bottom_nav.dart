import 'package:flutter/material.dart';
import 'bottom_nav_modal_bottom_sheet.dart';
import 'logo.dart';

class BottomNav extends StatefulWidget {
  final GlobalKey itemKeyHome;
  final GlobalKey itemKeyAbout;
  final GlobalKey itemKeySkills;
  final GlobalKey itemKeyServices;

  const BottomNav(
      {Key? key,
      required this.itemKeyHome,
      required this.itemKeyAbout,
      required this.itemKeySkills,
      required this.itemKeyServices})
      : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Divider(height: 1, thickness: .5),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //logo
            GestureDetector(
                onTap: () async {
                  final context = widget.itemKeyHome.currentContext;

                  await Scrollable.ensureVisible(context!,
                      duration: const Duration(seconds: 1));
                },
                child: const Logo()),

            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      constraints: const BoxConstraints(maxHeight: 250),
                      child: BottomNavModalBottomSheet(
                        itemKeyHomeM: widget.itemKeyHome,
                        itemKeyAboutM: widget.itemKeyAbout,
                        itemKeySkills: widget.itemKeySkills,
                        itemKeyServices: widget.itemKeyServices,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.apps_outlined)),
          ],
        ),
      ),
    ]);
  }
}
