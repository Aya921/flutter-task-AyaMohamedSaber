
import 'package:flutter/material.dart';
import 'package:otex_app/core/extensions/app_localization_extenstion.dart';
import 'package:otex_app/core/routes/app_route.dart';
import 'package:otex_app/feature/home/presentation/view/pages/offers_page.dart';

abstract class Routes {
  static Route onGenerate(RouteSettings settings) {
    final url = Uri.parse(settings.name ??   '/');

    switch (url.path) {

      case AppRoute.offerPage:
       return MaterialPageRoute(
          builder: (context) {

            return const  OffersPage();
          },
        );

     

      default:
        return MaterialPageRoute(
          builder: (context) {

            return Scaffold(body: Center(child: Text(context.loc.noRouteFound)));
          },
        );
    }
  }
}
