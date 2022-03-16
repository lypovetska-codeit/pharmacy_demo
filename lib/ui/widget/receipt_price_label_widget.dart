// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class ReceiptPriceLabelWidget extends StatelessWidget {
  const ReceiptPriceLabelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.destructiveOpaqueColor,
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/ic_receipе.svg"),
          const SizedBox(width: 4),
          Text(
            context.l10n.receiptLabel,
            style: const TextStyle(color: AppColors.destructiveColor, fontWeight: FontWeight.w800, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
