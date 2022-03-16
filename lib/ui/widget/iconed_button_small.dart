import 'package:flutter/material.dart';
import 'package:pharmacy/ui/style/app_style.dart';

class IconedButtonSmall extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback onPressed;

  const IconedButtonSmall({Key? key, required this.icon, required this.onPressed, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppStyle.outlineButtonLightStyleSmall,
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         icon,
          const SizedBox(width: 4),
          Text(title, style: AppStyle.textStyleOutlineButtonLightStyleSmall),
        ],
      ),
    );
  }
}
