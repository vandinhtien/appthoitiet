import 'package:appthoitiet/models/weather.dart';
import 'package:appthoitiet/page/home/widgets/home_detail_weather.dart';
import 'package:appthoitiet/page/home/widgets/home_location.dart';
import 'package:appthoitiet/page/home/widgets/home_temperature.dart';
import 'package:appthoitiet/page/home/widgets/home_weathe_icons.dart';
import 'package:appthoitiet/providers/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff1D6CF3),
              Color(0xff19D2FE),
            ],
          ),
        ),
        child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherCurrent(),
          initialData: null,
          builder: (BuildContext context, AsyncSnapshot Snapshot) {
            if (Snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!Snapshot.hasData) {
              return Container(
                child: Text('no data'),
              );
            }
            WeatherData data = Snapshot.data as WeatherData;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeWeatherIcons(
                  nameIcon: data.weather[0].main,
                ),
                HomeTemperature(
                  temp: data.main.temp,
                ),
                HomeLocation(
                  namelocation: data.name,
                ),
                SizedBox(
                  height: 40,
                ),
                HomeDetailWeather(
                  humidity: data.main.humidity,
                  speedwind: data.wind.speed,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
