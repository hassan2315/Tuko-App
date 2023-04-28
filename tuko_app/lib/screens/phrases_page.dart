import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/number.dart';

class PhrasesMembers extends StatelessWidget {
  const PhrasesMembers({super.key});
  final List<Item> phrases = const [
    Item(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: 'Kodoku suru koto o wasurenaide',
        enName: 'dont forget to subscribe'),
    Item(
        sound: 'are_you_coming.wav',
        jpName: 'Kimasu ka ',
        enName: 'are you coming?'),
    Item(
        sound: 'i_love_programming.wav',
        jpName: 'watashi wa puroguraminguu ga',
        enName: 'i love programming'),
    Item(
        sound: 'whew_are_you_going.wav',
        jpName: 'Doko ni iku no ',
        enName: 'where are you going'),
    Item(
        sound: 'what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka ',
        enName: 'what is your name?'),
    Item(
        sound: 'how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka ',
        enName: 'how are you feeling?'),
    Item(
        sound: 'programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu ',
        enName: 'progrmming is easy'),
    Item(
        sound: 'i_love_anime.wav',
        jpName: 'Watashi wa anime ga daiskidesu ',
        enName: 'i love anime'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Phrases'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                color: const Color(0xff50ADC7),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    // Do something when the card is tapped
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                phrases[index].jpName,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                phrases[index].enName,
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        IconButton(
                          onPressed: () {
                            try {
                              AudioCache player = AudioCache(
                                prefix: 'assets/sounds/phrases/',
                              );
                              player.play(phrases[index].sound);
                            } catch (ex) {
                              print(ex);
                            }
                          },
                          icon: const Icon(Icons.play_arrow_rounded),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
