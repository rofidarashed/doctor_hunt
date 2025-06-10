import 'package:doctor_hunt/core/routes/route_generator.dart';
import 'package:doctor_hunt/core/routes/routes.dart';
import 'package:doctor_hunt/feature/view/screens/onboard1_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Onboard1Screen(),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
