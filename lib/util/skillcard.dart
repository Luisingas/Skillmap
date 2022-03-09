import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';
import 'package:skillmap/theme/colors.dart';

class SkillCard extends StatelessWidget {
  final String name, description, img;

  SkillCard(this.name, this.description, this.img);

  @override
  Widget build(BuildContext context) {
    return Swipable(
      onSwipeRight: (finalPosition) {
        print("swipe right");
      },
      onSwipeLeft: (finalPosition) {
        print("swipe left");
      },
      onSwipeUp: (finalPosition) {
        print("swipe up");
      },
      child: Container(
        width: 600,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0), color: Colors.blue),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Image(image: AssetImage(img)),
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 30, color: white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 5),
              child: Text(
                description,
                style: const TextStyle(fontSize: 14, color: white),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }
}
