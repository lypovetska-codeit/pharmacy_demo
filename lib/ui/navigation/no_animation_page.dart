import 'package:flutter/widgets.dart';

class NoAnimationPage extends Page<dynamic> {
  const NoAnimationPage({
    LocalKey? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Route<dynamic> createRoute(BuildContext context) => PageRouteBuilder<dynamic>(
        settings: this,
        pageBuilder: (_, __, ___) => child, // don't wrap in an animation to create a page without animation.
      );
}
