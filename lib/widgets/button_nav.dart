import 'package:flutter/material.dart';

// navButton
class NavButton extends StatelessWidget {
  final String label;
  final GlobalKey itemKey;

  const NavButton({Key? key, required this.label, required this.itemKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () async {
          final context = itemKey.currentContext!;

          await Scrollable.ensureVisible(context,
              duration: const Duration(seconds: 1));
        },
        child: Text(
          label,
          style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w500),
        ));
  }
}
