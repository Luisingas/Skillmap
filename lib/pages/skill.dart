import 'package:flutter/material.dart';
import 'package:skillmap/data/skill_list.dart';
import 'package:skillmap/data/skill_options.dart';
import 'package:skillmap/util/skillcard.dart';
import 'package:skillmap/theme/colors.dart';

class Skill extends StatefulWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  List itemsTemp = [];
  int itemLength = 0;

  List<SkillCard> cards = [
    SkillCard(skill_json[0]["name"], skill_json[0]["description"],
        skill_json[0]["img"]),
    SkillCard(skill_json[1]["name"], skill_json[1]["description"],
        skill_json[1]["img"]),
    SkillCard(skill_json[2]["name"], skill_json[2]["description"],
        skill_json[2]["img"]),
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      itemsTemp = skill_json;
      itemLength = skill_json.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white, body: getBody(), bottomSheet: getFooter());
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 120),
        child: Container(
          alignment: Alignment.center,
          height: size.height * 0.70,
          width: size.width * 0.80,
          child: Stack(
            children: cards,
          ),
        ),
      ),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 120,
      decoration: const BoxDecoration(color: sec_color),
      child: Padding(
        padding: const EdgeInsets.only(left: 60, right: 60, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(option_icons.length, (index) {
            return Container(
              width: option_icons[index]['size'],
              height: option_icons[index]['size'],
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                  boxShadow: [
                    BoxShadow(color: sec_color, spreadRadius: 5, blurRadius: 10)
                  ]),
              child: Center(
                  child: Image.asset(
                option_icons[index]['icon'],
                width: option_icons[index]['icon_size'],
              )),
            );
          }),
        ),
      ),
    );
  }
}
