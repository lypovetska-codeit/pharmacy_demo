import 'package:flutter/material.dart';
import 'package:pharmacy/ui/widget/handler_widget.dart';

class BottomSheetWrapper extends StatelessWidget {
  final Widget child;

  const BottomSheetWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 14, bottom: 32),
              child: child,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: HandlerWidget(),
          ),
        ],
      ),
    );
  }
}
