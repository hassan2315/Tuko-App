import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/number.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Item> familymembers = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    Item(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    Item(
        sound: 'grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'Grand father'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    Item(
        sound: 'older brother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother'),
    Item(
        sound: 'older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    Item(
        sound: 'younger brother.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ototo',
        enName: 'younger brother'),
    Item(
        sound: 'younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imoto',
        enName: 'younger sister'),
    Item(
        sound: 'grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Chichioya',
        enName: 'Grand mother'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Family membrs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: familymembers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                color: const Color(0xff558B37),
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
                          child: Image.asset(familymembers[index].image!),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                familymembers[index].jpName,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                familymembers[index].enName,
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
                                prefix: 'assets/sounds/family_members/',
                              );
                              player.play(familymembers[index].sound);
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
