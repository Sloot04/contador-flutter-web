import 'package:flutter/material.dart';

import 'package:bases_web/locator.dart';
import 'package:bases_web/router/router.dart';

import 'package:bases_web/ui/layout/main_layout_page.dart';

import 'services/navigation_services.dart';
//import 'package:bases_web/ui/pages/counter_page.dart';
//import 'package:bases_web/ui/pages/counter_provider_page.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? const CircularProgressIndicator(),
        );
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white
      ),
    );
  }
}
