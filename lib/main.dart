import 'package:flutter/material.dart';

import 'package:bases_web/router/router_generator.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';

import 'package:bases_web/services/navigation_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RutasApp',
      initialRoute: '/stateful',
      navigatorKey: navigationService.navigatorKey,
      onGenerateRoute: RouterGenerator.generateRoute,
      builder: (_, child) {
        return MainLayoutPage(child: child ?? Container());
      },
    );
  }
}