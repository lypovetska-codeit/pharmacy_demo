import 'package:flutter/material.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class BannerLabel extends StatelessWidget {
  final String title;

  const BannerLabel({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.colorAccent),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(color: AppColors.colorAccent, fontSize: 10, fontWeight: FontWeight.w800),
      ),
    );
  }
}
