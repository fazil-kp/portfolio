import 'package:core/helpers/core_helpers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../helpers/scaffold.dart';
import 'core_route_list.dart';

final GoRouter coreRoute = GoRouter(
  initialLocation: "/",
  redirectLimit: 3,
  errorBuilder: (context, state) {
    return CustomScaffold(
      childWidget: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go("/"),
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  },
  navigatorKey: Const.navigatorKey,
  routes: _buildRoutes(),
);

List<RouteBase> _buildRoutes() {
  return [
    GoRoute(
      path: '/',
      parentNavigatorKey: Const.navigatorKey,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
        },
        child: const CustomScaffold(),
      ),
      routes: [ ..._mainRoutes() ],
    ),
  ];
}









Future<bool> login() async {
  return true;
}

List<GoRoute> _mainRoutes() {
  List<GoRoute> mainGoRoutes = [];

  for (var mainCoreRoute in mainRouteList) {
    mainGoRoutes.add(
      GoRoute(
        path: mainCoreRoute.routeName!,
        name: mainCoreRoute.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
          },
          child: mainCoreRoute.widget!,
        ),
      ),
    );
  }

  return mainGoRoutes;
}
