import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_sharp),
              label: 'Profile',
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
