import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

extension DoubleExtensions on num {
  SizedBox get verticalSpace => SizedBox(height: toDouble());

  SizedBox get horizontalSpace => SizedBox(width: toDouble());

  String formatPrice([int decimalDigits = 2, bool delete = false]) {
    final floored = floor();
    final value = this / floored;
    final numberFormat = NumberFormat.currency(
      decimalDigits: value == 1 ? 0 : decimalDigits,
      name: "EGP",
    );
    final amount = numberFormat.format(toDouble());
    return amount;
  }

  BorderRadius get toCircularBorderRadius => BorderRadius.circular(toDouble());
}
//   String toOrdinalNumber(BuildContext context) {
//     switch (this) {
//       case 1:
//         return context.locale.ground;
//       case 2:
//         return context.locale.first;
//       case 3:
//         return context.locale.second;
//       case 4:
//         return context.locale.third;
//       case 5:
//         return context.locale.fourth;
//       case 6:
//         return context.locale.fifth;
//       case 7:
//         return context.locale.sixth;
//       case 8:
//         return context.locale.seventh;
//       case 9:
//         return context.locale.eighth;
//       case 10:
//         return context.locale.ninth;
//       case 11:
//         return context.locale.ten;
//       default:
//         return '$num';
//     }
//   }
// }