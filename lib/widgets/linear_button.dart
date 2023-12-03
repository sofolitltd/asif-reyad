import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/widgets/svg_icon.dart';

class LinearButton extends StatelessWidget {
  final String buttonText;
  final String iconName;
  final String link;

  const LinearButton({
    Key? key,
    required this.buttonText,
    required this.iconName,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () async {
          if (link != '') {
            final url = Uri.parse(link);
            await canLaunchUrl(url)
                ? await launchUrl(url, webOnlyWindowName: 'blank')
              : throw 'Could not launch $url';
          } else {
          log('Could not launch: $link');
          }
        },
        color: Colors.deepPurpleAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                buttonText,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(width: 8),
            svgIcon(iconName: iconName, color: Colors.white),
          ],
        ));
  }
}
