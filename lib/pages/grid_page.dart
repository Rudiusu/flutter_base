import 'package:flutter/material.dart';
import "../widgets/card/card_base.dart";

class BadgeList extends StatefulWidget {
  const BadgeList({super.key});

  @override
  State<BadgeList> createState() => _BadgeListState();
}

class _BadgeListState extends State<BadgeList> {
  List<Widget> fetchBadgeList() {
    return List.generate(50, (int index) {
      return CardBase(
        Container(
          alignment: Alignment.center,
          child: Text(
            "徽章${index + 1}",
            style: TextStyle(fontFamily: 'PingFang', fontSize: 20),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return CardBase(
            Container(
              alignment: Alignment.center,
              child: Text(
                "徽章${index + 1}",
                style: TextStyle(fontFamily: 'PingFang', fontSize: 20),
              ),
            ),
          );
        },
      ),
      // GridView.extent(
      //   maxCrossAxisExtent: 160,
      //   padding: EdgeInsets.all(10),
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      //   children: fetchBadgeList(),
      // ),
    );
  }
}
