//ignore_for_file:depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_event.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';
import 'package:pharmacy/ui/navigation/main_nav_state.dart';
import 'package:pharmacy/ui/style/app_colors.dart';

class MainBottomNavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainNavBloc, MainNavState>(
      builder: (context, state) {
        final currentIndex = state.items.last.mainNavItemPosition;
        return BottomNavigationBar(
          selectedItemColor: AppColors.colorAccent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/ic_home.svg", color: currentIndex == 0 ? AppColors.colorAccent : AppColors.iconPrimaryColor),
              label: context.l10n.homePageTitle,
            ),
            BottomNavigationBarItem(
              icon:
                  SvgPicture.asset("assets/icons/ic_catalog.svg", color: currentIndex == 1 ? AppColors.colorAccent : AppColors.iconPrimaryColor),
              label: context.l10n.catalogPageTitle,
            ),
            BottomNavigationBarItem(
              icon:
                  SvgPicture.asset("assets/icons/ic_profile.svg", color: currentIndex == 2 ? AppColors.colorAccent : AppColors.iconPrimaryColor),
              label: context.l10n.profilePageTitle,
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            context.read<MainNavBloc>().add(MainNavEvent.navigateToPage(_indexToItem(index)));
          },
        );
      },
    );
  }

  static MainNavItem _indexToItem(int index) {
    switch (index) {
      case 0:
        return MainNavItem.mainScreen();
      case 1:
        return MainNavItem.catalogScreen();
      case 2:
        return MainNavItem.profileScreen();
      default:
        return MainNavItem.mainScreen();
    }
  }
}
