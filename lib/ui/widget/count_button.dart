import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/style/app_style.dart';

class CountButton extends StatelessWidget {
  final int initialValue;
  final ValueChanged<int> onChange;

  const CountButton({Key? key, required this.initialValue, required this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.colorAccentLight),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (initialValue > 1) onChange(initialValue - 1);
            },
            icon: SvgPicture.asset("assets/icons/ic_minus.svg"),
          ),
          Text(initialValue.toString(), style: AppStyle.textStylePrimaryBold),
          IconButton(
            onPressed: () {
              onChange(initialValue + 1);
            },
            icon: SvgPicture.asset("assets/icons/ic_plus.svg"),
          )
        ],
      ),
    );
  }
}
