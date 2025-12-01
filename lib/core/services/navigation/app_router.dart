import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/services/navigation/routes.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/add_new_category/presentation/view/add_new_category_page.dart';
import '../../../feature/add_new_rental/presentation/view/add_new_rental_page.dart';
import '../../../feature/auth/presentation/view/login_view_page.dart';
import '../../../feature/home/presentation/view/home_page.dart';
import '../../../feature/profile/presentation/view/settings_page.dart';
import '../../../feature/upgrade_plans/presentation/view/upgrade_plans_page.dart';
import '../../../layout/home_layouts/presentation/view/home_base_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
// extend the generated private router
@singleton
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LoginViewRoute.page, path: AppRoutes.login),
    AutoRoute(
      page: HomeBaseRoute.page,
      path: AppRoutes.homeBase,
      children: [
        AutoRoute(page: HomeRoute.page, path: AppRoutes.home),
        AutoRoute(page: UpgradePlansRoute.page, path: 'upgradePlans'),
        AutoRoute(page: SettingsRoute.page, path: AppRoutes.settings),
      ],
    ),

    AutoRoute(page: AddNewRentalRoute.page, path: AppRoutes.addNewRental),
    AutoRoute(page: AddNewCategoryRoute.page, path: AppRoutes.addNewCategory),

    /// upgrade view
    AutoRoute(page: UpgradePlansRoute.page, path: AppRoutes.upgradePlans),
  ];
}
