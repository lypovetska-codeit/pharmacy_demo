import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pharmacy/domain/model/app_locale.dart';
import 'package:pharmacy/ui/cart/cart_bloc.dart';
import 'package:pharmacy/ui/locale/locale_bloc.dart';
import 'package:pharmacy/ui/locale/locale_state.dart';
import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/navigation/main_nav_parser.dart';
import 'package:pharmacy/ui/navigation/main_nav_router_delegate.dart';
import 'package:pharmacy/ui/style/app_colors.dart';
import 'package:pharmacy/ui/user/user_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainNavBloc>(create: (_) => widget.appComponent.resolve()),
        BlocProvider<LocaleBloc>(create: (_) => widget.appComponent.resolve()),
        BlocProvider<UserBloc>(create: (_) => widget.appComponent.resolve()),
        BlocProvider<CartBloc>(create: (_) => widget.appComponent.resolve()),
      ],
      child: _buildApp(),
    );
  }

  Widget _buildApp() {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Pharmacy App',
          locale: state.locale.toLocale(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routeInformationParser: SimpleParser(),
          routerDelegate: _delegate,
          theme: ThemeData(
            toggleableActiveColor: AppColors.colorAccent,
            fontFamily: "Manrope",
            dividerColor: Colors.transparent,
            primaryColor: AppColors.colorPrimary,
            primarySwatch: AppColors.colorPrimaryDark,
          ),
        );
      },
    );
  }
}
