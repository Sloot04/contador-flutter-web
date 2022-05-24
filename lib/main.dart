import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';
import 'package:bases_web/router/route_generator.dart';
//import 'package:bases_web/ui/pages/counter_page.dart';
//import 'package:bases_web/ui/pages/counter_provider_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RutasApp',
        initialRoute: '/sateful',
        onGenerateRoute: RouteGenerator.generateRoute,
        builder: (_, child) {
          return   MainLayoutPage(  child: child ?? const CircularProgressIndicator(), );
        });
  }
}
