import 'package:flutter/material.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class SettingRowWidget extends StatelessWidget {
  final Widget leading;
  final String title;
  final Widget? trailing;

  const SettingRowWidget({
    Key? key,
    required this.leading,
    required this.title,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Color(0x141d2482), blurRadius: 8)],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.textPrimaryColor,
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}
