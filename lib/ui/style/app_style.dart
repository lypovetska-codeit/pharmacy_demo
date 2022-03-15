import 'package:flutter/material.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class AppStyle {
  AppStyle._();

  static ButtonStyle sizedOutlineButtonPrimaryStyle = OutlinedButton.styleFrom(
    maximumSize: const Size(36, 36),
    minimumSize: const Size(36, 36),
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    side: const BorderSide(color: AppColors.colorPrimary),
  );
  static ButtonStyle sizedOutlineButtonGreyStyle = OutlinedButton.styleFrom(
    maximumSize: const Size(36, 36),
    minimumSize: const Size(36, 36),
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    side: const BorderSide(color: AppColors.grayscaleDividerColor),
  );
  static ButtonStyle sizedBigOutlineButtonGreyStyle = OutlinedButton.styleFrom(
    maximumSize: const Size(64, 64),
    minimumSize: const Size(64, 64),
    padding: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    side: const BorderSide(color: AppColors.grayscaleDividerColor),
  );

  static ButtonStyle sizedOutlineButtonPrimaryFilledStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.grayscaleDividerColor;
      }
      return AppColors.colorPrimary;
    }),
    minimumSize: MaterialStateProperty.resolveWith<Size>((states) => const Size(36, 36)),
    maximumSize: MaterialStateProperty.resolveWith<Size>((states) => const Size(36, 36)),
    padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
    shape:
        MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
    side: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(color: AppColors.grayscaleDividerColor);
      }
      return const BorderSide(color: AppColors.colorPrimary);
    }),
    // side: const BorderSide(color: AppColors.colorPrimary),
  );

  static ButtonStyle outlineButtonPrimaryStyle = OutlinedButton.styleFrom(
    backgroundColor: AppColors.colorPrimary,
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    side: const BorderSide(width: 2, color: AppColors.colorPrimary),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
  );
  static ButtonStyle outlineButtonDestructiveStyle = OutlinedButton.styleFrom(
    backgroundColor: AppColors.destructiveColor,
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    side: const BorderSide(width: 2, color: AppColors.destructiveColor),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(14),
      ),
    ),
  );

  static ButtonStyle outlineButtonPrimaryStyleSmall = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.grayscaleDividerColor;
      }
      return AppColors.colorPrimary; // Defer to the widget's default.
    }),
    shape: MaterialStateProperty.resolveWith(
      (states) => const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
    ),
    padding: MaterialStateProperty.resolveWith(
      (states) => const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),
    side: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(color: AppColors.grayscaleDividerColor);
      }
      return const BorderSide(color: AppColors.colorPrimary);
    }),
  );

  static ButtonStyle outlineButtonLightStyleSmall = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.grayscaleDividerColor;
      }
      return AppColors.colorPrimary; // Defer to the widget's default.
    }),
    shape: MaterialStateProperty.resolveWith(
      (states) => const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
    ),
    padding: MaterialStateProperty.resolveWith(
      (states) => const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),
    side: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(color: AppColors.grayscaleDividerColor);
      }
      return const BorderSide(color: AppColors.colorPrimary);
    }),
  );
  static ButtonStyle outlineButtonDestructiveLightStyleSmall = ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return AppColors.grayscaleDividerColor;
      }
      return AppColors.destructiveLightColor; // Defer to the widget's default.
    }),
    shape: MaterialStateProperty.resolveWith(
      (states) => const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
    ),
    padding: MaterialStateProperty.resolveWith(
      (states) => const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),
    side: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(color: AppColors.grayscaleDividerColor);
      }
      return const BorderSide(color: AppColors.destructiveLightColor);
    }),
  );

  static ButtonStyle outlineButtonPrimaryBorderedStyleSmall = ButtonStyle(
    shape: MaterialStateProperty.resolveWith(
      (states) => const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(14),
        ),
      ),
    ),
    padding: MaterialStateProperty.resolveWith(
      (states) => const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),
    side: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(color: AppColors.grayscaleDividerColor);
      }
      return const BorderSide(color: AppColors.grayscaleDividerColor);
    }),
  );

  static InputDecoration inputDecorationForSlider({
    required String labelText,
    required String hintText,
  }) {
    return InputDecoration(
      isDense: true,
      fillColor: Colors.green,
      labelText: labelText,
      hintText: hintText,
      labelStyle: const TextStyle(
        color: AppColors.textSecondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      // ),
    );
  }

  static TextStyle primaryTextStyle = const TextStyle(
    fontSize: 14,
    fontFamily: "Manrope",
    color: AppColors.textPrimaryColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle secondaryTextStyle = const TextStyle(
    fontSize: 12,
    color: AppColors.textPrimaryColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headerTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimaryColor,
  );
}
