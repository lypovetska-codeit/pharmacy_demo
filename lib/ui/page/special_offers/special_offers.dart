// ignore_for_file: depend_on_referenced_packages

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pharmacy/domain/model/list_id.dart';
import 'package:pharmacy/ui/page/special_offers/special_offers_bloc.dart';
import 'package:pharmacy/ui/page/special_offers/special_offers_state.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/header_widget.dart';
import 'package:vicodin/vicodin.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
    required this.onTap,
    required this.appComponent,
  }) : super(key: key);
  final ValueChanged<ListId> onTap;
  final Component appComponent;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SpecialOffersBloc>(
      create: (context) => appComponent.resolve(),
      child: BlocBuilder<SpecialOffersBloc, SpecialOffersState>(
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(title: AppLocalizations.of(context)!.specialOffersTitle),
            state.map(
              loaded: (state) => state.items.isNotEmpty
                  ? CarouselSlider(
                      options: CarouselOptions(
                        height: 150,
                        aspectRatio: 275 / 150,
                      ),
                      items: [..._buildItems(state)],
                    )
                  : const SizedBox(
                      height: 150,
                      child: Center(child: Text("There are no offers yet")),
                    ),
              loading: (_) {
                return const SizedBox(width: 275, height: 150, child: Center(child: CircularProgressIndicator()));
              },
              error: (error) {
                return Center(
                  child: SizedBox(
                    height: 150,
                    width: 275,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(14),
                      ),
                      child: Container(
                        color: AppColors.colorPrimary,
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.generalErrorMessage,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: AppColors.grayscaleWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildItems(Loaded state) {
    return state.items
        .map(
          (e) => ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
            child: Container(
              height: 150,
              width: 275,
              color: AppColors.colorPrimary,
              child: GestureDetector(
                onTap: () => onTap(e.listId),
                child: FadeInImage.assetNetwork(
                  imageErrorBuilder: (context, error, stackTrace) => ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    child: Image.asset("assets/images/ic_offer_placeholder.jpeg"),
                  ),
                  fit: BoxFit.cover,
                  placeholder: "assets/images/ic_offer_placeholder.jpeg",
                  image: e.imageUrl,
                ),
              ),
            ),
          ),
        )
        .toList();
  }
}
