import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/di/modules/blocs_module.dart';
import 'package:pharmacy/di/modules/repos_module.dart';
import 'package:pharmacy/pharmacy_app.dart';
import 'package:vicodin/vicodin.dart';

void main() {
  if (kDebugMode) {
    Fimber.plantTree(DebugTree());
  }
  final appComponent = componentOf(
    import: [
      // remoteModule(),
      reposModule(),
      blocsModule(),
    ],
  );
  runApp(PharmacyApp(appComponent: appComponent));
}
