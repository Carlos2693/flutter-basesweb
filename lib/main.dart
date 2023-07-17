import 'package:bases_web/router/router_generator.dart';
import 'package:bases_web/ui/pages/counter_provider_page.dart';
import 'package:flutter/material.dart';
import 'package:bases_web/ui/pages/counter_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/stateful',
      // routes: {
      //   '/stateful': (_) => const CounterPage(),
      //   '/provider': (_) => const CounterProviderPage(),
      // },
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}