import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  // @lazySingleton
  // FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  // @lazySingleton
  // FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  // @lazySingleton
  // Dio get dio {
  //   final aDio = Dio(
  //     BaseOptions(
  //       baseUrl: "https://live.my-compound.com/api/v1/owner",
  //       // baseUrl: Env.baseUrl,
  //       connectTimeout: const Duration(seconds: 30),
  //       receiveTimeout: const Duration(seconds: 30),
  //       sendTimeout: const Duration(seconds: 30),
  //       followRedirects: true,
  //       headers: {
  //         "Accept": "application/json",
  //       },
  //     ),
  //   );
  //   aDio.interceptors.addAll([LanguageInterceptor()]);
  //   if (kDebugMode) {
  //     aDio.interceptors.add(
  //       PrettyDioLogger(
  //         requestHeader: true,
  //         requestBody: true,
  //         responseBody: true,
  //         responseHeader: false,
  //         error: true,
  //         compact: true,
  //         maxWidth: 90,
  //       ),
  //     );
  //   }
  //   return aDio;
  // }
}