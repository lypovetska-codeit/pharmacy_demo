import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class DottedTextButton extends StatelessWidget {
  final Color color;
  final Widget child;
  final VoidCallback onPressed;

  const DottedTextButton({Key? key, required this.color, required this.child, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () => onPressed(),
      child: DottedBorder(
        dashPattern: const [1, 2],
        color: AppColors.textPrimaryColor,
        customPath: (size) {
          return Path()
            ..moveTo(0, size.height)
            ..lineTo(size.width, size.height);
        },
        child: child,
      ),
    );
  }
}
