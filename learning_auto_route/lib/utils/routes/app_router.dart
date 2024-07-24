import 'package:auto_route/auto_route.dart';
import 'package:learning_auto_route/utils/routes/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: AuthMainRoute.page,
      path: '/auth', 
      initial: true, 
      children: [
        AutoRoute(page: LoginRoute.page, path: 'login'), 
        AutoRoute(page: SignupRoute.page, path: 'signup')
        ],
    ),
    ];
}