import 'package:flutter/material.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  _ProgressWidgetState createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppColors.grayscaleWhiteColor,
            ),
            child: const Center(child: CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }
}
