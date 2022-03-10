// ignore_for_file: depend_on_referenced_packages

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class GuestCardPreview extends StatelessWidget {
  const GuestCardPreview({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 48, right: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.of(context)!.joinUsRationale,
                    style: const TextStyle(fontSize: 18, color: AppColors.colorPrimary),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      onTap();
                    },
                    child: DottedBorder(
                      dashPattern: const [1, 2],
                      color: AppColors.colorPrimary,
                      customPath: (size) {
                        return Path()
                          ..moveTo(0, size.height)
                          ..lineTo(size.width, size.height);
                      },
                      child: Text(
                        AppLocalizations.of(context)!.joinUs,
                        style:
                            const TextStyle(fontSize: 18, color: AppColors.colorPrimary, fontWeight: FontWeight.w800),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            customPath: (size) {
              return Path()
                ..moveTo(size.width, 0)
                ..lineTo(4, 0)
                ..arcToPoint(
                  const Offset(0, 4),
                  radius: const Radius.circular(12),
                )
                ..lineTo(0, size.height - 4)
                ..arcToPoint(
                  Offset(4, size.height),
                  radius: const Radius.circular(12),
                )
                ..lineTo(size.width, size.height);
            },
            dashPattern: const [3, 5],
            color: AppColors.colorPrimary,
            child: Container(
              padding: const EdgeInsets.all(24),
              width: 110,
              height: 178,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.discountCardPlaceholder,
                    style: const TextStyle(
                      fontSize: 10,
                      color: AppColors.colorPrimary,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
