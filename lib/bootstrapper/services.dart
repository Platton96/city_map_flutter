
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();
GetIt _ioc;

setGetIt(GetIt ioc) {
  _ioc = ioc;
}
