// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
            error == null ? AppLocalizations.of(context)!.noResultsMessage : error!,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: error == null ? Colors.black : Colors.red,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            onRetry();
          },
          child: Text(
            AppLocalizations.of(context)!.reloadPageMessage,
            style: const TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
