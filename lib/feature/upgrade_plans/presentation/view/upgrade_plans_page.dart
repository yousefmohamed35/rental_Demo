import 'package:auto_route/annotations.dart';
import 'package:demorental/core/presentation/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UpgradePlansPage extends StatelessWidget {
  const UpgradePlansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(child: Text('data'));
  }
}