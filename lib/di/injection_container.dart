import 'package:demorental/di/injection_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';


GetIt locater = GetIt.instance;

@injectableInit
Future<void> configure() async => locater.init();