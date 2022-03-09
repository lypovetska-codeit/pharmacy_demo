// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pharmacy/ui/page/home/home_bloc.dart';
import 'package:pharmacy/ui/page/home/home_event.dart';
import 'package:pharmacy/ui/page/home/home_state.dart';
import 'package:pharmacy/ui/page/special_offers/special_offers.dart';
import 'package:pharmacy/ui/page/tags/tags_widget.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/empty_result_retry_widget.dart';
import 'package:pharmacy/ui/widget/guest_card_preview.dart';
import 'package:pharmacy/ui/widget/main_bottom_navigation_widget.dart';
import 'package:pharmacy/ui/widget/progress_widget.dart';
import 'package:pharmacy/ui/widget/screen_default_wrapper.dart';
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
        body: ScreenDefaultWrapper(
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
      ),
    );
  }

  Widget _loaded(BuildContext context, LoadedState state) {
    return Column(
      children: [
        GuestCardPreview(
          onTap: () {},
        ),
        const SizedBox(height: 16),
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
      centerTitle: true,
      toolbarHeight: 70,
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: AppColors.colorPrimary,
      title: Text(
        AppLocalizations.of(context)!.homePageTitle,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
