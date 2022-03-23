
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/banner_offer.dart';
import 'package:pharmacy/ui/page/special_offers/special_offers_bloc.dart';
import 'package:pharmacy/ui/page/special_offers/special_offers_state.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/banner_label.dart';
import 'package:pharmacy/ui/widget/header_widget.dart';
import 'package:vicodin/vicodin.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
    required this.onTap,
    required this.appComponent,
  }) : super(key: key);
  final ValueChanged<BannerOffer> onTap;
  final Component appComponent;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SpecialOffersBloc>(
      create: (context) => appComponent.resolve(),
      child: BlocBuilder<SpecialOffersBloc, SpecialOffersState>(
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(title: context.l10n.specialOffersTitle),
            state.map(
              loaded: (state) => state.items.isNotEmpty
                  ? CarouselSlider(
                      options: CarouselOptions(
                        height: 150,
                        aspectRatio: 275 / 150,
                      ),
                      items: [..._buildItems(state)],
                    )
                  :  SizedBox(
                      height: 150,
                      child: Center(child: Text(context.l10n.emptyOffer)),
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
                        color: AppColors.grayscaleWhiteOpaqueColor,
                        child: Center(
                          child: Text(
                            context.l10n.generalErrorMessage,
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
          (e) => Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(14),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x0a1d2482),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
              child: Container(
                height: 150,
                width: 275,
                decoration: const BoxDecoration(
                  color: AppColors.grayscaleWhiteColor,
                ),
                child: GestureDetector(
                  onTap: () => onTap(e),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.network(
                          e.imageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(14)),
                            child: SvgPicture.asset(
                              "assets/images/offer_placeholder.svg",
                              color: AppColors.grayscaleDividerColor,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 16,
                        child: BannerLabel(title: e.title),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
        .toList();
  }
}
