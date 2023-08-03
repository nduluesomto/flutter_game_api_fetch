import 'package:flutter/material.dart';

Widget buildDetailsPage(
    {required String img,
    required String title,
    required String platforms,
    required String description,
    required String steps}) {
  return Column(
    children: [
      Image.network(img, height: 230, fit: BoxFit.cover),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                softWrap: true,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            Row(children: [
              const Text('Platforms: ', style: TextStyle(color: Colors.black)),
              Text(platforms, style: const TextStyle(color: Colors.black)),
            ]),
            const SizedBox(height: 30),
            _reusableText(text: 'Game Description'),
            const SizedBox(height: 5),
            Text(description,
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.justify),
            const SizedBox(height: 30),
            _reusableText(text: 'Steps to get it'),
            const SizedBox(height: 5),
            Text(steps,
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.justify),
          ],
        ),
      )
    ],
  );
}

Widget _reusableText({required String text}) {
  return Text(text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ));
}
