import 'package:flutter/material.dart';
import 'package:pharmacy/ui/widget/receipt_price_label_widget.dart';

class ProductLabelWidget extends StatelessWidget {
  const ProductLabelWidget({Key? key, required this.needReceipt, required this.withDiscount}) : super(key: key);
  final bool needReceipt;
  final bool withDiscount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 4),
        Visibility(
          visible: needReceipt,
          child: const ReceiptPriceLabelWidget(),
        ),
      ],
    );
  }
}
