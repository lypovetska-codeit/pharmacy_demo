import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_event.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';
import 'package:pharmacy/ui/navigation/main_nav_state.dart';
import 'package:pharmacy/ui/navigation/no_animation_page.dart';
import 'package:pharmacy/ui/page/cart/cart_screen.dart';
import 'package:pharmacy/ui/page/catalog/catalog_screen.dart';
import 'package:pharmacy/ui/page/home/home_screen.dart';
import 'package:pharmacy/ui/page/product/product_screen.dart';
import 'package:pharmacy/ui/page/profile/profile_screen.dart';
import 'package:vicodin/vicodin.dart';

class MainNavRouterDelegate extends RouterDelegate<MainNavItem>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MainNavItem> {
  MainNavRouterDelegate(this.appComponent) : navigatorKey = GlobalKey<NavigatorState>();
  final Component appComponent;
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainNavBloc, MainNavState>(
      builder: (context, MainNavState state) {
        final List<Page> pagesNew = state.items
            .map(
              (e) => e.map(
                mainScreen: (screen) => [
                  NoAnimationPage(
                    key: ValueKey(screen),
                    child: HomeScreen(
                      key: ValueKey(screen),
                      appComponent: appComponent,
                    ),
                  )
                ],
                catalogScreen: (screen) => [
                  NoAnimationPage(
                    key: ValueKey(screen),
                    child: CatalogScreen(
                      key: ValueKey(screen),
                      appComponent: appComponent,
                    ),
                  )
                ],
                profileScreen: (screen) => [
                  NoAnimationPage(
                    key: ValueKey(screen),
                    child: ProfileScreen(
                      key: ValueKey(screen),
                    ),
                  )
                ],
                productScreen: (screen) => [
                  NoAnimationPage(
                    key: ValueKey(screen),
                    child: ProductScreen(
                      screen.product,
                      key: ValueKey(screen),
                    ),
                  )
                ],
                cartScreen: (screen) => [
                  NoAnimationPage(
                    key: ValueKey(screen),
                    child: CartScreen(
                      key: ValueKey(screen),
                    ),
                  )
                ],
              ),
            )
            .expand((element) => element)
            .toList();
        return Navigator(
          key: navigatorKey,
          pages: pagesNew,
          onPopPage: (route, dynamic result) {
            if (!route.didPop(result)) {
              return false;
            }
            context.read<MainNavBloc>().add(MainNavEvent.navigateBack());
            return true;
          },
        );
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MainNavItem configuration) async {
    return;
  }
}
