import 'dart:convert';

import 'package:flutter_game_api/models/game_model.dart';
import 'package:http/http.dart' as http;

class GameRepository {
  Future<List<GameModel>?> getData() async {
    String url = 'https://gamerpower.com/api/giveaways';

    final result = await http.Client().get(Uri.parse(url));
    if (result.statusCode != 200) {
      return null;
    } else {
      Iterable models = jsonDecode(result.body);
      List<GameModel> gameModels = [];
      for (var model in models) {
        GameModel gameModel = GameModel.fromJson(model);
        gameModels.add(gameModel);
      }
      return gameModels;
    }
  }
}
