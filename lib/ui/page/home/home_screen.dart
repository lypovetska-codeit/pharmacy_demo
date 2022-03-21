import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_event.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';
import 'package:pharmacy/ui/page/cart/cart_bloc.dart';
import 'package:pharmacy/ui/page/cart/cart_state.dart';
import 'package:pharmacy/ui/page/home/home_bloc.dart';
import 'package:pharmacy/ui/page/home/home_event.dart';
import 'package:pharmacy/ui/page/home/home_state.dart';
import 'package:pharmacy/ui/page/special_offers/special_offers.dart';
import 'package:pharmacy/ui/page/tags/tags_widget.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/badged_button.dart';
import 'package:pharmacy/ui/widget/empty_result_retry_widget.dart';
import 'package:pharmacy/ui/widget/main_bottom_navigation_widget.dart';
import 'package:pharmacy/ui/widget/progress_widget.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';
import 'package:pharmacy/ui/widget/search/search_widget.dart';
import 'package:pharmacy/ui/widget/user_card_preview.dart';
import 'package:vicodin/vicodin.dart';

class HomeScreen extends StatelessWidget {
  final Component appComponent;

  const HomeScreen({Key? key, required this.appComponent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => appComponent.resolve(),
      child: Scaffold(
        appBar: _buildAppBar(context),
        bottomNavigationBar: MainBottomNavigationWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _MainUserSearchbar(
                appComponent: appComponent,
              ),
              ScreenDefaultWrapper(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return state.map(
                      loading: (state) => const ProgressWidget(),
                      loaded: (state) => _loaded(context, state),
                      error: (state) => EmptyResultRetry(
                        onRetry: () {
                          context.read<HomeBloc>().add(HomeEvent());
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loaded(BuildContext context, LoadedState state) {
    return Column(
      children: [
        SpecialOffers(
          onTap: (onTap) {
            // todo open offer
          },
          appComponent: appComponent,
        ),
        const SizedBox(height: 16),
        TagsWidget(
          onTap: (productCategory) {
            // todo navigate to category
          },
          appComponent: appComponent,
        ),
      ],
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: AppColors.colorPrimary,
      title: Text(
        context.l10n.homePageTitle,
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

class _MainUserSearchbar extends StatelessWidget {
  final Component appComponent;

  const _MainUserSearchbar({Key? key, required this.appComponent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorPrimary,
      child: Column(
        children: [
          SearchWidget(
            onFocus: (bool value) {},
            onSelect: (Product value) {
              context.read<MainNavBloc>().add(MainNavEvent.navigateToPage(MainNavItem.productScreen(value)));
            },
            appComponent: appComponent,
          ),
          const SizedBox(height: 24),
          const UserCardPreview(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
