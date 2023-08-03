import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../models/game_model.dart';
import '../../routes/routes_import.gr.dart';

Widget homePageData(List<GameModel> results) {
  return ListView.builder(itemBuilder: (BuildContext context, int index) {
    final GameModel gameModel = results[index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).push(DetailsPageRoute(gameModel: gameModel));
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                  height: 210,
                  width: MediaQuery.of(context).size.width / 1.02,
                  fit: BoxFit.cover,
                  image: NetworkImage(gameModel.image)),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 10, top: 12, bottom: 10, right: 10),
                  height: 110,
                  width: MediaQuery.of(context).size.height,
                  color: Colors.black.withOpacity(0.6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.21,
                        child: Text(gameModel.title,
                            softWrap: true,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Text('Platforms: ',
                              style: TextStyle(color: Colors.white)),
                          Text(gameModel.platforms,
                              style: const TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  });
}
