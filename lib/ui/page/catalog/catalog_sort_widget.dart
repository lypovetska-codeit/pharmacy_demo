import 'package:flutter/material.dart';
import 'package:pharmacy/domain/model/product_sort_order.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/style/app_style.dart';
import 'package:pharmacy/ui/style/text_helper.dart';

class CatalogSortWidget extends StatefulWidget {
  final ProductSortOrder initialItem;

  const CatalogSortWidget({Key? key, required this.initialItem}) : super(key: key);

  @override
  State<CatalogSortWidget> createState() => _CatalogSortWidgetState();
}

class _CatalogSortWidgetState extends State<CatalogSortWidget> {
  ProductSortOrder selectedItem = ProductSortOrder.rating;

  @override
  void initState() {
    selectedItem = widget.initialItem;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Sort by",
            style: TextStyle(fontSize: 18, color: AppColors.textPrimaryColor, fontWeight: FontWeight.w600),
          ),
        ),
        const Divider(color: AppColors.colorAccentLight),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            ListView.builder(
              shrinkWrap: true,
              itemCount: ProductSortOrder.values.length,
              itemBuilder: (context, index) {
                final item = ProductSortOrder.values[index];
                return RadioListTile<ProductSortOrder>(
                  value: item,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (ProductSortOrder? value) {
                    if (value != null) {
                      setState(() {
                        selectedItem = value;
                      });
                    }
                  },
                  title: Text(
                    TextHelper.getProductSortOrderTitle(context, item),
                    style: const TextStyle(fontSize: 16, color: AppColors.textPrimaryColor),
                  ),
                  groupValue: selectedItem,
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
                        Navigator.pop(context, selectedItem);
                      },
                      child: Text(
                        "Apply",
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
