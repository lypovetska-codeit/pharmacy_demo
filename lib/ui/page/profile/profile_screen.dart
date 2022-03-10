// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pharmacy/domain/model/app_locale.dart';
import 'package:pharmacy/ui/locale/locale_bloc.dart';
import 'package:pharmacy/ui/locale/locale_event.dart';
import 'package:pharmacy/ui/locale/locale_state.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/main_bottom_navigation_widget.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(context),
          backgroundColor: AppColors.greenPrimaryColor,
          bottomNavigationBar: MainBottomNavigationWidget(),
          body: _buildBody(context, state),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, LocaleState state) {
    return ScreenDefaultWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: AppLocale.values
            .map(
              (e) => CustomRadioWidget(
                value: e.asTitle(context),
                isSelected: state.locale == e,
                onTap: () {
                  context.read<LocaleBloc>().add(LocaleEvent.changeLocale(e));
                },
              ),
            )
            .toList(),

        // [
        //   Material(
        //     color: Colors.transparent,
        //     child: InkWell(
        //       onTap: () {
        //         context.read<LocaleBloc>().add(LocaleEvent.changeLocale(AppLocale.ru));
        //       },
        //       child: Padding(
        //         padding: const EdgeInsets.all(16),
        //         child: Row(
        //           children: [
        //             Container(
        //               width: 24,
        //               height: 24,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(50),
        //                 border: Border.all(color: AppColors.grayscaleDividerColor, width: 3),
        //                 color: state.locale == AppLocale.ru ? AppColors.colorPrimary : AppColors.grayscaleDividerColor,
        //               ),
        //             ),
        //             const SizedBox(width: 12),
        //             Text(
        //               "Русский",
        //               style: TextStyle(
        //                 fontSize: 16,
        //                 color: state.locale == AppLocale.ru ? AppColors.colorPrimary : AppColors.textPrimaryColor,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        //   CustomRadioWidget(value: '', isSelected: null, onTap: () {
        //     context.read<LocaleBloc>().add(LocaleEvent.changeLocale(locale));
        //   },),
        //   const Divider(color: AppColors.grayscaleDividerColor),
        //   Material(
        //     color: Colors.transparent,
        //     child: InkResponse(
        //       onTap: () => context.read<LocaleBloc>().add(LocaleEvent.changeLocale(AppLocale.en)),
        //       child: Padding(
        //         padding: const EdgeInsets.all(16),
        //         child: Row(
        //           children: [
        //             Container(
        //               width: 24,
        //               height: 24,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(50),
        //                 border: Border.all(color: AppColors.grayscaleDividerColor, width: 3),
        //                 color: state.locale == AppLocale.en
        //                     ? AppColors.greenPrimaryColor
        //                     : AppColors.grayscaleDividerColor,
        //               ),
        //             ),
        //             const SizedBox(width: 12),
        //             Text(
        //               "Английский",
        //               style: TextStyle(
        //                 fontSize: 16,
        //                 color: state.locale == AppLocale.en ? AppColors.greenPrimaryColor : AppColors.textPrimaryColor,
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        //   const Divider(color: AppColors.grayscaleDividerColor),
        //   Padding(
        //     padding: const EdgeInsets.all(16),
        //     child: Visibility(
        //       visible: state.error != null,
        //       child: Text(
        //         AppLocalizations.of(context)!.generalErrorMessage,
        //         style: const TextStyle(
        //           fontSize: 12,
        //           fontWeight: FontWeight.w500,
        //           color: AppColors.colorError,
        //         ),
        //       ),
        //     ),
        //   )
        // ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: AppColors.colorPrimary,
      title: Text(
        AppLocalizations.of(context)!.profilePageTitle,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class CustomRadioWidget extends StatelessWidget {
  final bool isSelected;
  final String value;
  final VoidCallback onTap;

  const CustomRadioWidget({
    Key? key,
    required this.isSelected,
    required this.value,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onTap(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: AppColors.grayscaleDividerColor, width: 3),
                  color: isSelected ? AppColors.colorPrimary : AppColors.grayscaleDividerColor,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? AppColors.colorPrimary : AppColors.textPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
