import 'package:flutter/material.dart';
import 'package:bases_web/router/route_generator.dart';
//import 'package:bases_web/ui/pages/counter_page.dart';
//import 'package:bases_web/ui/pages/counter_provider_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/sateful',
      /* routes: {
        '/sateful': ((_) => const CounterPage()),
        '/provider': ((_) => const CounterProviderPage()),
      }, */
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
