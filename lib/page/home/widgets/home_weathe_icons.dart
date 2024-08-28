import 'package:flutter/material.dart';

class HomeWeatherIcons extends StatelessWidget {
  const HomeWeatherIcons({super.key, required this.nameIcon});
  final String nameIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 1.5,
      padding: EdgeInsets.all(20.0),
      child: Image.asset(
        'assets/images/weathers/clear.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
