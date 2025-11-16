// import 'package:flutter/material.dart';
// import 'package:scr_north_coast/core/constants/app_resources.dart';
// import 'package:scr_north_coast/core/presentation/widgets/dialogs/succes_dialog.dart';

// class DialogManager {
//   static Future<Object?> showSuccessDialog({
//     required BuildContext context,
//     String img = AppLottie.newSuccessLottie,
//     required String title,
//     required String description,
//     VoidCallback? successFunction,
//     bool hasTimer = false,
//   }) async {
//     return await showModalBottomSheet(
//       backgroundColor: Colors.transparent,
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       isDismissible: true,
//       enableDrag: true,
//       context: context,
//       isScrollControlled: true,
//       elevation: 0,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
//       transitionAnimationController: AnimationController(
//         vsync: Navigator.of(context),
//         duration: const Duration(milliseconds: 300),
//       ),
//       builder: (_) => SuccessDialog(
//         img: img,
//         title: title,
//         description: description,
//         successFunction: successFunction,
//         hasTimer: hasTimer,
//       ),
//     );
//   }
// }