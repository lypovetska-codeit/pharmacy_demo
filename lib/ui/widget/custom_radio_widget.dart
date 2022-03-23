import 'package:flutter/material.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class CustomRadioWidget<R> extends StatelessWidget {
  final R selectedValue;
  final R value;
  final String title;
  final VoidCallback onTap;

  const CustomRadioWidget({
    Key? key,
    required this.selectedValue,
    required this.value,
    required this.onTap,
    required this.title,
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
        child: RadioListTile<R>(
          groupValue: selectedValue,
          value: value,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.textPrimaryColor,
            ),
          ),
          onChanged: (value) => onTap(),
        ),
      ),
    );
  }
}
