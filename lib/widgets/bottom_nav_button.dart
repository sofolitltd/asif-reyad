import 'package:flutter/material.dart';
import '/widgets/svg_icon.dart';

// BottomNavButton
class BottomNavButton extends StatelessWidget {
  final BuildContext newContext;
  final String label;
  final String iconName;
  final GlobalKey itemKey;
  const BottomNavButton({
    super.key,
    required this.newContext,
    required this.label,
    required this.iconName,
    required this.itemKey,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * .02),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        onPressed: () async {
          Navigator.of(newContext).pop();

          final context = itemKey.currentContext!;

          await Scrollable.ensureVisible(context,
              duration: const Duration(seconds: 1));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgIcon(iconName: iconName.toString()),
            const SizedBox(height: 8),
            Text(label.toString()),
          ],
        ),
      ),
    );
  }
}
