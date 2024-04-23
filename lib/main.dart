import 'package:fapp/achievements.dart';
import 'package:fapp/dashboard.dart';
import 'package:fapp/targets.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Here defined the initial route
      initialRoute: '/',
      routes: {
        // Here defined other routes
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/login/dashboard': (context) => DashboardScreen(),
        '/login/dashboard/targets': (context) => TargetsPage(title: 'Targets'),
        '/login/dashboard/achievements': (context) =>
            AchievementsPage(title: 'Achievements'),
      },
    );
  }
}
