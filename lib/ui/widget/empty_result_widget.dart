import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class EmptyResultWidget extends StatelessWidget {
  const EmptyResultWidget({Key? key, required this.title}) : super(key: key);
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: AppColors.colorPrimary, blurRadius: 50),
            ],
          ),
          child: SvgPicture.asset(
            "assets/icons/search_empty.svg",
            width: 100,
          ),
        ),
        const SizedBox(height: 42),
        title,
      ],
    );
  }
}
