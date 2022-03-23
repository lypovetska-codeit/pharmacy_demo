import 'package:flutter/material.dart';
import 'package:pharmacy/build_context_extensions.dart';
import 'package:pharmacy/domain/model/product_category.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/style/app_style.dart';
import 'package:pharmacy/ui/style/text_helper.dart';
import 'package:pharmacy/ui/widget/dotted_text_button.dart';

class CatalogFilterWidget extends StatefulWidget {
  final Set<ProductCategory> initialItems;

  const CatalogFilterWidget({Key? key, required this.initialItems}) : super(key: key);

  @override
  State<CatalogFilterWidget> createState() => _CatalogFilterWidgetState();
}

class _CatalogFilterWidgetState extends State<CatalogFilterWidget> {
  Set<ProductCategory> selectedItems = {};

  @override
  void initState() {
    selectedItems = widget.initialItems.toSet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                context.l10n.filter_lower,
                style: AppStyle.textStyleHeader,
              ),
              DottedTextButton(
                onPressed: () {
                  setState(() {
                    selectedItems = {};
                  });
                },
                color: AppColors.textPrimaryColor,
                child: Text(
                  context.l10n.clear,
                  style: AppStyle.textStylePrimaryBold,

                ),
              ),
            ],
          ),
        ),
        const Divider(color: AppColors.colorAccentLight),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                context.l10n.category,
                style: AppStyle.textStyleHeader,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: ProductCategory.values.length,
              itemBuilder: (context, index) {
                final item = ProductCategory.values[index];
                return CheckboxListTile(
                  value: selectedItems.contains(item),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (value) {
                    setState(() {
                      if (selectedItems.contains(item)) {
                        selectedItems.remove(item);
                      } else {
                        selectedItems.add(item);
                      }
                    });
                  },
                  title: Text(
                    TextHelper.getProductCategoryTitle(context, item),
                    style: const TextStyle(fontSize: 16, color: AppColors.textPrimaryColor),
                  ),
                );
              },
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: OutlinedButton(
                      style: AppStyle.outlineButtonAccentStyleSmall,
                      onPressed: () {
                        Navigator.pop(context, selectedItems);
                      },
                      child: Text(
                        context.l10n.apply,
                        style: AppStyle.textStyleOutlineButtonAccentStyleSmall,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
