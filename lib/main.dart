import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'core/data/data_sources/shared_pref.dart';
import 'di/injection_container.dart' as di;
import 'rental_demo.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.configure();
  await ScreenUtil.ensureScreenSize();
  await SharedPref.getInstance();
  preventLandscape();

  timeago.setLocaleMessages('ar', timeago.ArMessages());

  runApp(const RentalDemo());
}

void preventLandscape() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
}