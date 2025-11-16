import 'package:duration/duration.dart';
import 'package:duration/locale.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../generated/l10n.dart';

extension DateTimeUtils on DateTime {
  String get timeFormat {
    if (isAfter(DateTime.now())) {
      final duration = difference(DateTime.now());
      return prettyDuration(
      duration
    ,
    tersity: duration.inDays <= 0 ? duration.inHours <=0
    ? DurationTersity.minute
        : DurationTersity.hour : DurationTersity.day,
    upperTersity: DurationTersity.day,
    locale: DurationLocale.fromLanguageCode(S.current.locale) ??
    const EnglishDurationLocale(),
    );
    } else {
      return timeago.format(this, locale: S.current.locale);
    }
  }
}