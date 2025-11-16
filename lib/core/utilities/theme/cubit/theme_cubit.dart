import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../di/injection_container.dart';
import '../../../constants/cache_keys.dart';
import '../../../constants/locales.dart';
import '../../../data/data_sources/cache_helper.dart';
import 'theme_state.dart';


class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.initial());

  Locale locale = englishLocale;
  bool isDark = false;

  Future<void> getCurrentLocale() async {
    emit(const ThemeState.loading());
    await locater<CacheHelper>().has(CacheKeys.locale).then((hasToken) async {
      if (hasToken) {
        await locater<CacheHelper>().get(CacheKeys.locale).then((value) async {
          locale = Locale.fromSubtags(
              languageCode: value.split('_').first,
              countryCode: value.split('_').last);
        });
      } else {
        final String deviceLocale = Platform.localeName;
        if (deviceLocale.contains("ar")) {
          locale = arabicLocale;
        } else {
          locale = englishLocale;
        }
        await locater<CacheHelper>().put(CacheKeys.locale, locale.toString());
      }
    });
    emit(const ThemeState.changeState());
  }

  Future<void> changeLocale(Locale lc) async {
    emit(const ThemeState.loading());
    locale = lc;
    await locater<CacheHelper>().put(CacheKeys.locale, locale.toString());
    emit(const ThemeState.changeState());
  }
}