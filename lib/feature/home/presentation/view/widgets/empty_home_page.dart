import 'package:demorental/core/extension/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyHomePage extends StatelessWidget {
  const EmptyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset("assets/svg/empty_property.svg"),
          15.verticalSpace,
          Text(
          'you dont have any rental',
            style: context.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}