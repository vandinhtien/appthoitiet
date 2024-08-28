import 'package:appthoitiet/apps/utils/const.dart';
import 'package:appthoitiet/models/weather.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailBody extends StatelessWidget {
  DetailBody({super.key, required this.listData});
  final List<WeatherDetail> listData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(20),
        itemBuilder: (context, index) {
          DateTime dateTime = DateTime.parse(listData[index].dt_txt);
          String formatDay = DateFormat('EEEE').format(dateTime);
          String formatTime = DateFormat('HH:MM').format(dateTime);
          return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        createTemp(listData[index].main.temp, size: 40),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          listData[index].weather.main,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      formatDay,
                      style: TextStyle(
                          fontSize: 16, color: Color.fromARGB(255, 3, 71, 127)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      formatTime,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 4,
                  child: Image.asset(
                    AssetCustom.getLinkImg(listData[index].weather.main),
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, _) => SizedBox(
              height: 15,
            ),
        itemCount: 20);
  }
}
