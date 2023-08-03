// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_game_api/models/game_model.dart' as _i5;
import 'package:flutter_game_api/screens/details_page.dart' as _i2;
import 'package:flutter_game_api/screens/homepage.dart' as _i1;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    DetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsPageRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailsPage(
          key: args.key,
          gameModel: args.gameModel,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i3.PageRouteInfo<void> {
  const HomePageRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailsPage]
class DetailsPageRoute extends _i3.PageRouteInfo<DetailsPageRouteArgs> {
  DetailsPageRoute({
    _i4.Key? key,
    required _i5.GameModel gameModel,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          DetailsPageRoute.name,
          args: DetailsPageRouteArgs(
            key: key,
            gameModel: gameModel,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailsPageRoute';

  static const _i3.PageInfo<DetailsPageRouteArgs> page =
      _i3.PageInfo<DetailsPageRouteArgs>(name);
}

class DetailsPageRouteArgs {
  const DetailsPageRouteArgs({
    this.key,
    required this.gameModel,
  });

  final _i4.Key? key;

  final _i5.GameModel gameModel;

  @override
  String toString() {
    return 'DetailsPageRouteArgs{key: $key, gameModel: $gameModel}';
  }
}
