import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/utilities/theme/cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/services/navigation/app_router.dart';
import 'core/services/navigation/my_router_tracker.dart';
import 'core/utilities/light_theme/light_theme.dart';
import 'core/utilities/theme/cubit/theme_cubit.dart';
import 'di/injection_container.dart' as di;
import 'generated/l10n.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RentalDemo extends StatefulWidget {
  const RentalDemo({super.key});

  @override
  State<RentalDemo> createState() => _RentalDemoState();
}

class _RentalDemoState extends State<RentalDemo> {
  final _appRouter = di.locater<AppRouter>();
  // final _routeObserver = AutoRouteObserver();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()..getCurrentLocale()),
      ],

      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            builder: (context, _) {
              return MaterialApp.router(
                //onGenerateTitle: (context) => context.locale.title,
                debugShowCheckedModeBanner: false,
                supportedLocales: S.delegate.supportedLocales,

                routeInformationParser: _appRouter.defaultRouteParser(),
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  RefreshLocalizations.delegate,
                ],
                routeInformationProvider: _appRouter.routeInfoProvider(),
                // Provide an AutoRouteObserver instance
                routerDelegate: AutoRouterDelegate(
                  _appRouter,
                  navigatorObservers: () => [MyRouteTracker()],
                ),
                locale: BlocProvider.of<ThemeCubit>(context).locale,
                theme: MyCompoundLightTheme.lightTheme(
                  locale: BlocProvider.of<ThemeCubit>(context).locale,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
