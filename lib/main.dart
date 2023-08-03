import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_game_api/game_bloc/game_bloc.dart';
import 'package:flutter_game_api/repository/game_repository.dart';
import 'package:flutter_game_api/routes/routes_import.dart';

void main() {
  runApp(BlocProvider<GameBloc>(
      create: (context) => GameBloc(GameRepository()), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
    );
  }
}

/* Code written by Dike-Ndulue Johnpaul Somto */
/* Github link: https://github.com/nduluesomto */
