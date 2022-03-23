import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/app_locale.dart';
import 'package:pharmacy/ui/locale/locale_bloc.dart';
import 'package:pharmacy/ui/locale/locale_event.dart';
import 'package:pharmacy/ui/locale/locale_state.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_event.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';
import 'package:pharmacy/ui/page/cart/cart_bloc.dart';
import 'package:pharmacy/ui/page/cart/cart_state.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/style/app_style.dart';
import 'package:pharmacy/ui/user/user_bloc.dart';
import 'package:pharmacy/ui/user/user_event.dart';
import 'package:pharmacy/ui/user/user_state.dart';
import 'package:pharmacy/ui/widget/badged_button.dart';
import 'package:pharmacy/ui/widget/bottom_sheet_wrapper.dart';
import 'package:pharmacy/ui/widget/custom_radio_widget.dart';
import 'package:pharmacy/ui/widget/main_bottom_navigation_widget.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';
import 'package:pharmacy/ui/widget/setting_row_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      backgroundColor: AppColors.colorPrimary,
      bottomNavigationBar: MainBottomNavigationWidget(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ScreenDefaultWrapper(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.l10n.language,
                      style: const TextStyle(fontSize: 20, color: AppColors.textPrimaryColor),
                    ),
                    const SizedBox(height: 16),
                    _buildLocalePrefs(context),
                    const SizedBox(height: 24),
                    const Divider(color: AppColors.colorAccentLight),
                    _buildUserFields(context)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: AppColors.colorPrimary,
      title: Text(
        context.l10n.profilePageTitle,
        style: AppStyle.textStyleHeader,
      ),
      actions: [
        Row(
          children: [
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return BadgedButton(
                  icon: SvgPicture.asset("assets/icons/ic_cart.svg"),
                  counter: state.cartProducts.length,
                  onTap: () {
                    context.read<MainNavBloc>().add(MainNavEvent.navigateToPage(MainNavItem.cartScreen()));
                  },
                );
              },
            ),
            const SizedBox(width: 16),
          ],
        )
      ],
    );
  }

  Widget _buildUserFields(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, userState) {
        return userState.mapOrNull(
              loaded: (loadedState) =>
                  loadedState.user.mapOrNull(
                    authorized: (_) => Column(
                      children: [
                        const SizedBox(height: 16),
                        SettingRowWidget(
                          leading: SvgPicture.asset("assets/icons/ic_user_card.svg"),
                          title: context.l10n.personalInfo,
                          trailing: IconButton(
                            icon: SvgPicture.asset("assets/icons/ic_arrow_right.svg"),
                            onPressed: () {
                              //todo navigate to profile
                            },
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 12),
                        SettingRowWidget(
                          leading: SvgPicture.asset(
                            "assets/icons/ic_like.svg",
                            color: AppColors.colorAccent,
                          ),
                          title: context.l10n.myList,
                          trailing: IconButton(
                            icon: SvgPicture.asset("assets/icons/ic_arrow_right.svg"),
                            onPressed: () {
                              //todo navigate to my list
                            },
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(height: 12),
                        SettingRowWidget(
                          leading: SvgPicture.asset("assets/icons/ic_logout.svg"),
                          title: context.l10n.logout,
                          onTap: () {
                            _showLogoutConfirmation(context);
                          },
                        ),
                      ],
                    ),
                  ) ??
                  Container(),
            ) ??
            Container();
      },
    );
  }

  Widget _buildLocalePrefs(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return Column(
          children: [
            ...AppLocale.values
                .map(
                  (locale) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: CustomRadioWidget(
                      value: locale,
                      selectedValue: state.locale,
                      onTap: () => context.read<LocaleBloc>().add(LocaleEvent.changeLocale(locale)),
                      title: locale.asTitle(context),
                    ),
                  ),
                )
                .toList()
          ],
        );
      },
    );
  }

  void _showLogoutConfirmation(BuildContext parentContext) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      isDismissible: true,
      useRootNavigator: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      context: parentContext,
      builder: (BuildContext context) => BottomSheetWrapper(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                context.l10n.logoutConfirmation,
                textAlign: TextAlign.center,
                style: AppStyle.textStyleHeader,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                context.l10n.logoutRationale,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.textSecondaryColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    context.read<UserBloc>().add(UserEvent.logout());
                    Navigator.pop(context);
                  },
                  style: AppStyle.outlineButtonDestructiveStyle,
                  child: Text(
                    context.l10n.logout,
                    style: const TextStyle(
                      color: AppColors.grayscaleWhiteColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                context.l10n.dontLogout,
                style: AppStyle.textStylePrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
