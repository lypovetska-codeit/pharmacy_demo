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
import 'package:pharmacy/ui/widget/badged_button.dart';
import 'package:pharmacy/ui/widget/custom_radio_widget.dart';
import 'package:pharmacy/ui/widget/main_bottom_navigation_widget.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';
import 'package:pharmacy/ui/widget/setting_row_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(context),
          backgroundColor: AppColors.colorPrimary,
          bottomNavigationBar: MainBottomNavigationWidget(),
          body: _buildBody(context, state),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, LocaleState state) {
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
                    const Text(
                      "Language",
                      style: TextStyle(fontSize: 20, color: AppColors.textPrimaryColor),
                    ),
                    const SizedBox(height: 16),
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
                        .toList(),
                    const SizedBox(height: 24),
                    const Divider(color: AppColors.colorAccentLight),
                    const SizedBox(height: 16),
                    SettingRowWidget(
                      leading: SvgPicture.asset("assets/icons/ic_user_card.svg"),
                      title: "Personal info",
                      trailing: IconButton(
                        icon: SvgPicture.asset("assets/icons/ic_arrow_right.svg"),
                        onPressed: () {
                          //todo navigate to profile
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    SettingRowWidget(
                      leading: SvgPicture.asset("assets/icons/ic_like.svg", color: AppColors.colorAccent),
                      title: "My List",
                      trailing: IconButton(
                        icon: SvgPicture.asset("assets/icons/ic_arrow_right.svg"),
                        onPressed: () {
                          //todo navigate to my list
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    SettingRowWidget(
                      leading: SvgPicture.asset("assets/icons/ic_logout.svg"),
                      title: "Log out",
                    ),
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
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.textPrimaryColor),
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
}
