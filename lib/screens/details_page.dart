import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game_api/models/game_model.dart';
import 'package:flutter_game_api/screens/widgets/details_page_widget.dart';

@RoutePage()
class DetailsPage extends StatelessWidget {
  final GameModel gameModel;
  const DetailsPage({Key? key, required this.gameModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.4),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: buildDetailsPage(
          img: gameModel.image,
          title: gameModel.title,
          platforms: gameModel.platforms,
          description: gameModel.description,
          steps: gameModel.instructions),
    );
  }
}
