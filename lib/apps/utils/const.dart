import 'package:flutter/material.dart';

const linkAsset = 'assets/images/weathers/';

class AssetCustom {
  static String getLinkImg(String name) =>
      '$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey {
  static const String api_token = '3ba41df5ef20d6d8041d33e5374c4d12';
}

Widget createTemp(num temp, {double size = 100}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        temp.round().toString(),
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      Text(
        'o',
        style: TextStyle(
          fontSize: size / 3,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ],
  );
}
