import 'package:doctor_hunt/core/routes/routes.dart';
import 'package:doctor_hunt/feature/view/screens/find_doctors_screen.dart';
import 'package:doctor_hunt/feature/view/screens/home_screen.dart';
import 'package:doctor_hunt/feature/view/screens/live_chat_screen.dart';
import 'package:doctor_hunt/feature/view/screens/onboard1_screen.dart';
import 'package:doctor_hunt/feature/view/screens/onboard2_screen.dart';
import 'package:doctor_hunt/feature/view/screens/onboard3_screen.dart';
import 'package:doctor_hunt/feature/view/screens/popular_doctors.dart';
import 'package:doctor_hunt/feature/view/screens/select_time_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case AppRoutes.onboard1:
        return MaterialPageRoute(builder: (_) => Onboard1Screen());
      case AppRoutes.onboard2:
        return MaterialPageRoute(builder: (_) => Onboard2Screen());
      case AppRoutes.onboard3:
        return MaterialPageRoute(builder: (_) => Onboard3Screen());
      case AppRoutes.liveChat:
        return MaterialPageRoute(builder: (_) => LiveChatScreen());
      case AppRoutes.findDoctors:
        return MaterialPageRoute(builder: (_) => FindDoctorsScreen());
      case AppRoutes.selectTime:
        return MaterialPageRoute(builder: (_) => SelectTimeScreen());
      case AppRoutes.popularDoctors:
        return MaterialPageRoute(builder: (_) => PopularDoctorsScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${setting.name}'),
                ),
              ),
        );
    }
  }
}
