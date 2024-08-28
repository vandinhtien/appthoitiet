import 'package:appthoitiet/models/weather.dart';
import 'package:appthoitiet/page/detail/widgets/detail_body.dart';
import 'package:appthoitiet/providers/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          future: context.read<WeatherProvider>().getWeatherDetail(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            List<WeatherDetail> listData = snapshot.data as List<WeatherDetail>;
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: false,
                title: Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '${context.read<WeatherProvider>().nameaCity} City',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                actions: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
              body: DetailBody(
                listData: listData,
              ),
            );
          }),
    );
  }
}
