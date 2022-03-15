// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/empty_result_widget.dart';

class EmptyResultRetry extends StatelessWidget {
  const EmptyResultRetry({Key? key, required this.onRetry, this.error}) : super(key: key);
  final VoidCallback onRetry;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EmptyResultWidget(
          title: Text(
            error == null ? context.l10n.noResultsMessage : error!,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: error == null ? AppColors.textPrimaryColor : AppColors.colorError,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            onRetry();
          },
          child: Text(
            context.l10n.reloadPageMessage,
            style: const TextStyle(
              color: AppColors.textSecondaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
