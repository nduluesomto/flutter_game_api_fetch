import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_game_api/game_bloc/game_bloc.dart';
import 'package:flutter_game_api/screens/widgets/homepage_widget.dart';

import '../game_bloc/game_events.dart';
import '../game_bloc/game_states.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          if (state is InitialState) {
            context.read<GameBloc>().add(DataInitializeEvent());
          } else if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return const Center(
                child: Text('Error occurred while loading API Data'));
          } else if (state is LoadedState) {
            return homePageData(state.gameModelData);
          }
          return const SizedBox();
        },
      ),
    );
  }
}
