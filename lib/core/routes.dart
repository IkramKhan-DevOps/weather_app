import 'package:flutter/material.dart';
import 'package:weather/pages/screens/dashboard_screen.dart';

import '../pages/screens/forecast_screen.dart';
import '../pages/screens/home_screen.dart';
import '../pages/screens/search_screen.dart';

class AppRoutes {

  static const String homeScreen = '/home_screen';
  static const String dashboardScreen = '/dashboard_screen';
  static const String forecastScreen = '/forecast_screen';
  static const String searchScreen = '/search_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => const HomeScreen(),
    dashboardScreen: (context) => const DashBoardScreen(),
    forecastScreen: (context) => const ForecastScreen(),
    searchScreen: (context) => const SearchScreen(),
  };

}