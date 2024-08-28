import 'package:appthoitiet/apps/config/theme_custtom.dart';
import 'package:appthoitiet/page/bottom_navigation_bottom/bottom_custom.dart';
import 'package:appthoitiet/providers/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.positionCurrent});
  final Position positionCurrent;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider()..updatePosition(positionCurrent),
      child: MaterialApp(
        theme: ThemeCusttom.themeLight,
        debugShowCheckedModeBanner: false,
        home: BottomNavigationCustom(),
      ),
    );
  }
}
