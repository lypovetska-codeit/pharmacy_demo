// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_parser.dart';
import 'package:pharmacy/ui/navigation/main_nav_router_delegate.dart';
import 'package:vicodin/vicodin.dart';

class PharmacyApp extends StatefulWidget {
  final Component appComponent;

  const PharmacyApp({Key? key, required this.appComponent}) : super(key: key);

  @override
  State<PharmacyApp> createState() => _PharmacyAppState();
}

class _PharmacyAppState extends State<PharmacyApp> {
  late MainNavRouterDelegate _delegate;

  @override
  void didChangeDependencies() {
    _delegate = MainNavRouterDelegate(widget.appComponent);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainNavBloc>(
      create: (_) => widget.appComponent.resolve(),
      child: _buildApp(),
    );
  }

  Widget _buildApp() {
    return MaterialApp.router(
      title: 'Pharmacy App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationParser: SimpleParser(),
      routerDelegate: _delegate,
    );
  }
}
