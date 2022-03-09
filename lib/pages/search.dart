import 'package:flutter/material.dart';
import 'package:skillmap/data/expert_list.dart';
import 'package:skillmap/data/skill_list.dart';
import 'package:skillmap/util/expertcard.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<ExpertCard> cards = [
    ExpertCard(expert_json[0]["name"], expert_json[0]["related"],
        expert_json[0]["img"], expert_json[0]["level"]),
    ExpertCard(expert_json[1]["name"], expert_json[1]["related"],
        expert_json[1]["img"], expert_json[1]["level"]),
    ExpertCard(expert_json[2]["name"], expert_json[2]["related"],
        expert_json[2]["img"], expert_json[2]["level"]),
    ExpertCard(expert_json[3]["name"], expert_json[3]["related"],
        expert_json[3]["img"], expert_json[3]["level"]),
    ExpertCard(expert_json[4]["name"], expert_json[4]["related"],
        expert_json[4]["img"], expert_json[4]["level"]),
    ExpertCard(expert_json[2]["name"], expert_json[2]["related"],
        expert_json[2]["img"], expert_json[2]["level"]),
    ExpertCard(expert_json[2]["name"], expert_json[2]["related"],
        expert_json[2]["img"], expert_json[1]["level"]),
  ];

  void _runFilter(String value) {}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
              labelText: 'Search for skill', suffix: const Icon(Icons.search)),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: cards.length,
            itemBuilder: (BuildContext context, int index) {
              return cards[index];
            },
          ),
        )
      ]),
    );
  }
}
