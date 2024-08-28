import 'package:appthoitiet/models/weather.dart';
import 'package:appthoitiet/repositoryes/api_repository.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class WeatherProvider extends ChangeNotifier {
  Position? position;
  String nameaCity = 'Địa điểm ';
  updatePosition(Position positionCurrent) {
    position = positionCurrent;
    notifyListeners();
  }

  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiRepository.callApiGetWeather(position);
    nameaCity = result.name;
    notifyListeners();
    return result;
  }

  Future<List<WeatherDetail>> getWeatherDetail() async {
    List<WeatherDetail> result =
        await ApiRepository.callApiGetWeatherDetail(position);
    return result;
  }
}
