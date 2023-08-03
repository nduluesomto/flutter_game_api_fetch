import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_game_api/game_bloc/game_events.dart';
import 'package:flutter_game_api/game_bloc/game_states.dart';
import 'package:flutter_game_api/models/game_model.dart';

import '../repository/game_repository.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  final GameRepository gameRepository;
  GameBloc(this.gameRepository) : super(InitialState()) {
    on<DataInitializeEvent>(_dataInitialEvent);
  }

  void _dataInitialEvent(
      DataInitializeEvent event, Emitter<GameState> emit) async {
    emit(LoadingState());
    List<GameModel>? apiResult = await gameRepository.getData();
    if (apiResult == null) {
      emit(ErrorState());
    } else {
      emit(LoadedState(gameModelData: apiResult));
    }
  }
}
