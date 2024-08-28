import 'package:flutter/material.dart';

class HomeDetailWeather extends StatelessWidget {
  const HomeDetailWeather(
      {super.key, required this.humidity, required this.speedwind});
  final num humidity;
  final num speedwind;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset('assets/images/icons/Vector.png'),
            Text(
              '${humidity}km/h',
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Image.asset('assets/images/icons/humidity.png'),
            Text(
              '${speedwind}%',
              style: TextStyle(fontSize: 21, color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
