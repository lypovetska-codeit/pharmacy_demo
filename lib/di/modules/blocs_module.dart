import 'package:pharmacy/ui/navigation/main_nav_bloc.dart';
import 'package:pharmacy/ui/page/catalog/catalog_bloc.dart';
import 'package:pharmacy/ui/page/home/home_bloc.dart';
import 'package:pharmacy/ui/page/special_offers/special_offers_bloc.dart';
import 'package:pharmacy/ui/page/tags/tags_bloc.dart';
import 'package:vicodin/vicodin.dart';

Module blocsModule() => moduleOf(
      (r) {
        r.factory<MainNavBloc>(
          (r) => MainNavBloc(),
        );

        r.factory<HomeBloc>(
          (r) => HomeBloc(),
        );
        r.factory<SpecialOffersBloc>(
          (r) => SpecialOffersBloc(r.resolve()),
        );
        r.factory<TagsBloc>(
          (r) => TagsBloc(r.resolve()),
        );
        r.factory<CatalogBloc>(
          (r) => CatalogBloc(r.resolve()),
        );
      },
    );
