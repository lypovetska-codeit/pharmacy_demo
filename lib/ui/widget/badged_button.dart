import 'package:flutter/material.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class BadgedButton extends StatelessWidget {
  final Widget icon;
  final int counter;
  final bool? needPlaceholder;
  final VoidCallback onTap;

  const BadgedButton({
    Key? key,
    required this.icon,
    required this.counter,
    required this.onTap,
    this.needPlaceholder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          InkResponse(
            onTap: () => onTap(),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.colorAction,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [BoxShadow(blurRadius: 16, offset: Offset(0, 4), color: Color(0xff793600))],
                border: Border.all(color: AppColors.grayscaleWhiteOpaqueColor),
              ),
              child: Center(
                child: Container(
                  child: icon,
                ),
              ),
            ),
          ),
          if (counter == 0 && needPlaceholder == true)
            Align(
              alignment: const Alignment(0.7, -0.7),
              child: Container(
                alignment: Alignment.center,
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.colorPrimary,
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            )
          else
            Visibility(
              visible: counter > 0,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.center,
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: AppColors.grayscaleWhiteColor,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: Text(
                    counter.toString(),
                    style: const TextStyle(fontSize: 10, color: AppColors.textPrimaryColor),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
