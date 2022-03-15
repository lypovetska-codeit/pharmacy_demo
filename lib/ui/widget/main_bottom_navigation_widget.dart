//ignore_for_file:depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_event.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';
import 'package:pharmacy/ui/navigation/main_nav_state.dart';

class MainBottomNavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainNavBloc, MainNavState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: context.l10n.homePageTitle,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.list),
              label: context.l10n.catalogPageTitle,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.supervised_user_circle_sharp),
              label: context.l10n.profilePageTitle,
            ),
          ],
          currentIndex: state.items.last.mainNavItemPosition,
          selectedItemColor: Colors.amber[800],
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
