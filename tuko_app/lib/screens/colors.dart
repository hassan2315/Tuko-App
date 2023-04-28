import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/number.dart';

class ColorsMembers extends StatelessWidget {
  const ColorsMembers({super.key});
  final List<Item> colorss = const [
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    Item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    Item(
        sound: 'dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow'),
    Item(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray'),
    Item(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    Item(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    Item(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'shiori',
        enName: 'white'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Colors'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: colorss.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                color: const Color(0xff79359f),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {},
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
                          child: Image.asset(colorss[index].image!),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                colorss[index].jpName,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                colorss[index].enName,
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
                                prefix: 'assets/sounds/colors/',
                              );
                              player.play(colorss[index].sound);
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
