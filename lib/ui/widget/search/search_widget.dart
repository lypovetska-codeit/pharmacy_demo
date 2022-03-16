import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:pharmacy/domain/model/product.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/widget/search/search_bloc.dart';
import 'package:pharmacy/ui/widget/search/search_event.dart';
import 'package:pharmacy/ui/widget/search/search_state.dart';
import 'package:vicodin/vicodin.dart';

class SearchWidget extends StatefulWidget {
  final ValueChanged<Product> onSelect;
  final ValueChanged<bool> onFocus;
  final Component appComponent;

  const SearchWidget({
    Key? key,
    required this.onSelect,
    required this.onFocus,
    required this.appComponent,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocProvider<SearchBloc>(
      create: (context) => widget.appComponent.resolve(),
      child: BlocListener<SearchBloc, SearchState>(
        listenWhen: (oldState, newState) => true,
        listener: (context, state) => state.map(
          success: (success) => null,
          error: (error) {
            return null;
          },
        ),
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: FocusScope(
              child: Focus(
                onFocusChange: (focus) => widget.onFocus.call(focus),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: TypeAheadField(
                          hideOnEmpty: false,
                          textFieldConfiguration: TextFieldConfiguration(
                            focusNode: _focusNode,
                            controller: _controller,
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontSize: 14,
                                  color: AppColors.textSecondaryColor,
                                  fontStyle: FontStyle.normal,
                                ),
                            decoration: const InputDecoration(
                              hintText: "Catalog search",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: AppColors.textSecondaryColor,
                                fontStyle: FontStyle.normal,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                          loadingBuilder: (context) {
                            return Container();
                          },
                          errorBuilder: (context, error) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Text(
                                    error.toString(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: AppColors.destructiveColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          noItemsFoundBuilder: (context) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text(
                                    'По Вашему запросу ничего не найдено. \nУточните свой запрос',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: AppColors.colorPrimary, fontSize: 14),
                                  ),
                                ),
                              ],
                            );
                          },
                          itemBuilder: (BuildContext context, itemData) {
                            if (itemData != null) {
                              return _SuggestedProductLisTile(product: itemData as Product);
                            } else {
                              return Container(
                                height: 300,
                                color: Colors.red,
                              );
                            }
                          },
                          suggestionsBoxDecoration: SuggestionsBoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14),
                            ),
                            offsetX: -16,
                            constraints: BoxConstraints.tight(
                              Size(width - 32, 350),
                            ),
                          ),
                          onSuggestionSelected: (Object? suggestion) {
                            if (suggestion != null) {
                              widget.onSelect(suggestion as Product);
                            }
                          },
                          suggestionsCallback: (String pattern) async {
                            final completer = Completer<List<Product>>();
                            context.read<SearchBloc>().add(
                                  SearchEvent(
                                    query: pattern,
                                    completer: completer,
                                  ),
                                );
                            return completer.future;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: SvgPicture.asset("assets/icons/ic_search.svg"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _SuggestedProductLisTile extends StatelessWidget {
  final Product product;

  const _SuggestedProductLisTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      leading: SizedBox(
        width: 60,
        height: 60,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
          ),
          child: SvgPicture.asset("assets/images/drug_placeholder.svg"),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 14,
              color: AppColors.textPrimaryColor,
            ),
          ),
          const Text(
            "Available",
            style: TextStyle(
              color: AppColors.colorPrimary,
              fontSize: 12,
            ),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${product.price - product.discount} ₴",
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          Visibility(
            visible: product.discount > 0,
            child: Text(
              "${product.price}₴",
              style: const TextStyle(
                fontSize: 10,
                decoration: TextDecoration.lineThrough,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
