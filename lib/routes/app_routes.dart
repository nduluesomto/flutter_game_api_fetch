part of 'routes_import.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        //AutoRoute(page: HomePage, initial: true),
        AutoRoute(page: HomePageRoute.page, path: '/'),
        AutoRoute(page: DetailsPageRoute.page),
      ];
}
