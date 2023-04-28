import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? myKey}) : super(key: myKey);
  final List<Item> numbers = const [
    Item(
        sound: 'number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one'),
    Item(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two'),
    Item(
        sound: 'number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three'),
    Item(
        sound: 'number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Sji',
        enName: 'Four'),
    Item(
        sound: 'number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five'),
    Item(
        sound: 'number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six'),
    Item(
        sound: 'number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'Seven'),
    Item(
        sound: 'number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight'),
    Item(
        sound: 'number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'KYu',
        enName: 'nine'),
    Item(
        sound: 'number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'Ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                color: const Color(0xffEF9235),
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
                        Container(
                          width: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            color: Color(0xffFFF6DC),
                          ),
                          child: Image.asset(numbers[index].image!),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                numbers[index].jpName,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                numbers[index].enName,
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
                                prefix: 'assets/sounds/numbers/',
                              );
                              player.play(numbers[index].sound);
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
