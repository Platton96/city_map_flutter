import 'package:city_map_flutter/bootstrapper/services.dart';
import 'package:get_it/get_it.dart';

Future registerInstances() async {
  var ioc = GetIt.instance;
  _registerServices(ioc);

  setGetIt(ioc);
}

void _registerServices(GetIt ioc) {
}