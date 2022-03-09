import 'package:flutter/material.dart';
import 'package:skillmap/util/historycard.dart';

import '../data/skill_list.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<HistoryCard> cards = [
    HistoryCard(skill_json[0]["name"], skill_json[0]["related"],
        skill_json[0]["img"], skill_json[0]["level"]),
    HistoryCard(skill_json[1]["name"], skill_json[1]["related"],
        skill_json[1]["img"], skill_json[1]["level"]),
    HistoryCard(skill_json[2]["name"], skill_json[2]["related"],
        skill_json[2]["img"], skill_json[2]["level"]),
    HistoryCard(skill_json[3]["name"], skill_json[3]["related"],
        skill_json[3]["img"], skill_json[3]["level"]),
    HistoryCard(skill_json[4]["name"], skill_json[4]["related"],
        skill_json[4]["img"], skill_json[4]["level"]),
    HistoryCard(skill_json[2]["name"], skill_json[2]["related"],
        skill_json[2]["img"], skill_json[2]["level"]),
    HistoryCard(skill_json[2]["name"], skill_json[2]["related"],
        skill_json[2]["img"], skill_json[1]["level"]),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: UniqueKey(),
          direction: DismissDirection.endToStart,
          onDismissed: (_) {
            setState(() {
              print("Card number $index was removed");
              cards.removeAt(index);
            });
          },
          child: cards[index],
          background: Container(
            color: Colors.red,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
