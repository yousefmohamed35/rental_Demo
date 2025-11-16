import 'package:flutter/material.dart';



class AppServices {
  AppServices._();

  static Future<T?> showDefaultModalSheet<T>({
    required BuildContext context,
    required bool isDismissible,
    required bool isScrollable,
    required Widget child,
    bool expand = false,
    bool useSafeArea = false,
    Color backgroundColor = const Color(0xffF1F1F1),
  }) async =>
      showModalBottomSheet(
        context: context,
        backgroundColor: backgroundColor,
        barrierColor: Colors.black.withOpacity(0.5),
        enableDrag: isDismissible,
        isDismissible: isDismissible,
        isScrollControlled: true,
        useSafeArea: useSafeArea,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        useRootNavigator: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (context) {
          final sheetContent = Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Drag handle bar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 132,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              if (isScrollable)
                SingleChildScrollView(
                  child: SafeArea(bottom: false, child: child),
                )
              else
                Flexible(
                  child: SafeArea(bottom: false, child: child),
                ),
            ],
          );

          return sheetContent;
        },
      );

  // static void showSuccessDialog(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     backgroundColor: Colors.transparent, // for seamless custom UI
  //     builder: (_) => SuccessDialog(
  //       img: AppAssets.lottiePath("success.json"),
  //       title: 'تم بنجاح!',
  //       description: 'تمت الاضافة بنجاح. سيتم نقلك الآن.',
  //       hasTimer: true,
  //       successFunction: () {
  //         // Navigate or do something after dialog ends
  //         Navigator.pop(context);
  //       },
  //     ),
  //   );
  // }
}