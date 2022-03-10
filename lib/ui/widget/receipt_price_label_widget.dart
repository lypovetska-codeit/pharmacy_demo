// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class ReceiptPriceLabelWidget extends StatelessWidget {
  const ReceiptPriceLabelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.colorError,
        borderRadius: BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Text(
        AppLocalizations.of(context)!.receiptLabel,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 10),
      ),
    );
  }
}
