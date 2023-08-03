import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_model.freezed.dart';
part 'game_model.g.dart';

@freezed
class GameModel with _$GameModel {
  factory GameModel(
      {required int id,
      required String title,
      required String worth,
      required String thumbnail,
      required String image,
      required String description,
      required String instructions,
      required String open_giveaway_url,
      required String published_date,
      required String type,
      required String platforms}) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}
