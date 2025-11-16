import 'package:demorental/core/extension/context.dart';
import 'package:flutter/material.dart';


class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    this.title,
    this.leading,
    this.actions,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 22, horizontal: 16),
    this.backgroundColor,
    this.appBarColor,
    this.floatingActionButton,
  });

  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget child;
  final EdgeInsets padding;
  final Color? appBarColor;
  final Color? backgroundColor;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ""),
        leading: leading,
        actions: actions,
      ),
      backgroundColor: appBarColor,
      floatingActionButton: floatingActionButton,
      body: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          color: backgroundColor ?? Colors.white,
        ),
        child: SizedBox(
          height: context.screenHeight,
          child: child,
        ),
      ),
    );
  }
}