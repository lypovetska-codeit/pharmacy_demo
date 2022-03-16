import 'package:flutter/material.dart';

class ScreenDefaultWrapper extends StatelessWidget {
  final Widget child;

  const ScreenDefaultWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: Container(
          color: Colors.white,
          child: child,
        ),
      ),
    );
  }
}
