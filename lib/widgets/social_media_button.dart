import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/widgets/svg_icon.dart';

Widget socialMediaButton({
  required String iconName,
  required String type,
  required String data,
}) {
  return Material(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    color: Colors.transparent,
    child: InkWell(
      onTap: () async {
        if (data != '') {
          final url = Uri.parse('$type$data');
          await canLaunchUrl(url)
              ? await launchUrl(url)
              : throw 'Could not launch $url';
        } else {
          log('Could not launch: $data');
        }
      },
      borderRadius: BorderRadius.circular(50),
      child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: svgIcon(iconName: iconName)),
    ),
  );
}
