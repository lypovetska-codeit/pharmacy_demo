import 'package:flutter/material.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class SettingRowWidget extends StatelessWidget {
  final Widget leading;
  final String title;
  final Widget? trailing;
  final VoidCallback onTap;

  const SettingRowWidget({
    Key? key,
    required this.leading,
    required this.title,
    this.trailing,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shadowColor: AppColors.colorShadow,
      elevation: 8,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: leading,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.textPrimaryColor,
            ),
          ),
          trailing: trailing,
        ),
      ),
    );
  }
}
