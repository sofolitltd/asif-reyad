import 'package:flutter/material.dart';

Widget headline(context, {required String text}) {
  return Text(
    text,
    style: Theme.of(context)
        .textTheme
        .headlineMedium!
        .copyWith(fontWeight: FontWeight.bold),
  );
}
