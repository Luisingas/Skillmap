import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  final String name, description, img, level;

  HistoryCard(this.name, this.description, this.img, this.level);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          height: 100,
          width: 700,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0), color: Colors.white),
          child: Row(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 100,
                    child: Expanded(
                      child: Image(image: AssetImage(img)),
                      flex: 2,
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: ListTile(
                        title: Text(name),
                        subtitle: Text(description),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("Level:"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                level,
                                style: const TextStyle(color: Colors.green),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
