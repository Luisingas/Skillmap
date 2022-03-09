import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skillmap/pages/history.dart';
import 'package:skillmap/pages/search.dart';
import 'package:skillmap/pages/skill.dart';
import 'package:skillmap/theme/colors.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [Skill(), Search(), History()],
    );
  }

  PreferredSizeWidget getAppBar() {
    var items = [
      pageIndex == 0
          ? "assets/images/gcp_logo.png"
          : "assets/images/gcp_logo.png",
      pageIndex == 1
          ? "assets/images/gcp_logo.png"
          : "assets/images/gcp_logo.png",
      pageIndex == 2
          ? "assets/images/gcp_logo.png"
          : "assets/images/gcp_logo.png",
      pageIndex == 3
          ? "assets/images/gcp_logo.png"
          : "assets/images/gcp_logo.png",
    ];

    return AppBar(
      backgroundColor: white,
      elevation: 0,
      title: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 30),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: const Icon(Icons.home, color: grey)),
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: const Icon(Icons.search, color: grey)),
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: const Icon(Icons.history, color: grey)),
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: const Icon(
                Icons.settings,
                color: grey,
              ))
        ]),
      ),
    );
  }
}
