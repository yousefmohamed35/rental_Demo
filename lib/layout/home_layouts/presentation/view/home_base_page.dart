import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/core/services/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../../core/utilities/light_theme/light_colors.dart';
import '../../../../core/utilities/theme/cubit/theme_cubit.dart';

@RoutePage()
class HomeBasePage extends StatefulWidget {
  const HomeBasePage({super.key});

  @override
  State<HomeBasePage> createState() => _HomeBasePageState();
}

class _HomeBasePageState extends State<HomeBasePage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [const HomeRoute(), const UpgradePlansRoute()],
      lazyLoad: true,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        int selectedIndex = tabsRouter.activeIndex;
        return Scaffold(
          key: Key(BlocProvider.of<ThemeCubit>(context).locale.languageCode),
          backgroundColor: Theme.of(context).colorScheme.primary,
          body: SafeArea(bottom: false, child: child),
          bottomNavigationBar: Container(
            color: AppColors.scaffoldBackgroundColor,
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: SafeArea(
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.black.withOpacity(.1),
                    ),
                  ],
                ),
                child: GNav(
                  rippleColor: Colors
                      .transparent, // tab button ripple color when pressed
                  // tab button hover color
                  haptic: true, // haptic feedback
                  tabBorderRadius: 15,
                  tabActiveBorder: Border.all(
                    color: Colors.transparent,
                  ), // tab button border
                  tabBorder: Border.all(
                    color: Colors.transparent,
                  ), // tab button border

                  duration: const Duration(
                    milliseconds: 300,
                  ), // tab animation duration
                  gap: 8, // the tab button gap between icon and text
                  color: Colors.grey[800], // unselected icon color
                  activeColor: Theme.of(
                    context,
                  ).primaryColor, // selected icon and text color
                  iconSize: 24, // tab button icon size
                  tabBackgroundColor: Theme.of(context).colorScheme.secondary
                      .withOpacity(0.15), // selected tab background color
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ), // navigation bar padding
                  selectedIndex: selectedIndex,
                  onTabChange: tabsRouter.setActiveIndex,
                  tabs: [
                    GButton(
                      icon: selectedIndex == 0
                          ? PhosphorIcons.house_fill
                          : PhosphorIcons.house,
                      text: context.locale.home,
                      iconColor: context.primaryColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    GButton(
                      icon: selectedIndex == 1
                          ? PhosphorIcons.megaphone_fill
                          : PhosphorIcons.megaphone,
                      text: context.locale.upgrade,
                      iconColor: context.primaryColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    GButton(
                      icon: selectedIndex == 2
                          ? PhosphorIcons.user_circle_fill
                          : PhosphorIcons.user_circle,
                      //   text: context.locale.profile,
                      iconColor: context.primaryColor,
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  String _getTitle(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return context.locale.home;
      case 1:
        return context.locale.upgrade;
      case 2:
      //  return context.locale.profile;
      default:
        return '';
      // return context.locale.properties;
    }
  }
}
