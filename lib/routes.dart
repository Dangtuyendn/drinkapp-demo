import 'package:flutter/material.dart';
import 'package:drinkapp/representation/screen/detail_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  DetailScreen.routerName: (context) => const DetailScreen(),
};
