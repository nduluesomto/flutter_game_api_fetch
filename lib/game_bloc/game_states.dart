import 'package:flutter/cupertino.dart';
import 'package:flutter_game_api/models/game_model.dart';

@immutable
abstract class GameState {}

class InitialState extends GameState {}

class LoadingState extends GameState {}

class LoadedState extends GameState {
  final List<GameModel> gameModelData;
  LoadedState({required this.gameModelData});
}

class ErrorState extends GameState {}
