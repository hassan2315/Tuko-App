import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

import 'number.dart';

class ListItems extends StatelessWidget {
  const ListItems(
      {Key? key,
      required this.number,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Item number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
        color: color,
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              color: Color(0xffFFF6DC),
            ),
            child: Image.asset(number.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                try {
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/$itemType/');
                  player.play(number.sound);
                } catch (ex) {
                  print(ex);
                }
              },
              icon: const Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhraseItems extends StatelessWidget {
  const PhraseItems(
      {Key? key,
      required this.phrase,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Item phrase;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                phrase.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                phrase.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(phrase.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
      ]),
    );
  }
}
