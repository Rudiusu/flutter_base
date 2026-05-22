import 'package:flutter/material.dart';
import '../widgets/card/card_base.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

ScrollController scrollController = ScrollController();
List<Widget> fetchList() {
  return List.generate(
    50,
    (index) => CardBase(
      Container(
        width: double.infinity,
        height: 80,
        color: Colors.blue,
        child: Text('${index + 1}'),
      ),
    ),
  );
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("列表"), centerTitle: true),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: scrollController,
              child: Column(spacing: 20, children: [...fetchList()]),
            ),
            Positioned(
              right: 0,
              child: FloatingActionButton.small(
                onPressed: () {
                  scrollController.animateTo(
                    scrollController.position.maxScrollExtent,
                    duration: Duration(milliseconds: 1100),
                    curve: Curves.ease,
                  );
                },
                child: const Icon(Icons.arrow_downward_outlined),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          scrollController.animateTo(
            0,
            duration: Duration(milliseconds: 1100),
            curve: Curves.ease,
          );
        },
        child: const Icon(Icons.arrow_upward_outlined),
      ),
    );
  }
}
