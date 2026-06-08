import 'package:flutter/material.dart';

class TabList extends StatefulWidget {
  final List<String> tabList;
  const TabList({this.tabList = const [], super.key});

  @override
  State<TabList> createState() => _TabListState();
}

class _TabListState extends State<TabList> {
  // 当前激活标签
  int activeTabIndex = 0;
  Color activeColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(right: 10),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
              setState(() {
                activeTabIndex = index;
              }),
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: EdgeInsets.only(left: 10),

              decoration: BoxDecoration(
                border: Border.all(
                  color: activeTabIndex == index ? activeColor : Colors.black26,
                  width: 1,
                ),

                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Text(
                widget.tabList[index],
                style: TextStyle(
                  fontSize: 12,
                  color: activeTabIndex == index ? activeColor : Colors.black,
                ),
              ),
            ),
          );
        },
        itemCount: widget.tabList.length,
      ),
    );
  }
}
