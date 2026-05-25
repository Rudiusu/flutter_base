import 'package:flutter/material.dart';
import '../widgets/tab/tab_list.dart';

class ScrollHomePage extends StatefulWidget {
  const ScrollHomePage({super.key});

  @override
  State<ScrollHomePage> createState() => _ScrollHomePageState();
}

class _ScrollHomePageState extends State<ScrollHomePage> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页'), centerTitle: true),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 180,
              child: PageView(
                children: List.generate(
                  10,
                  (index) => Card(child: Center(child: Text("卡片${index + 1}"))),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(delegate: TabBar(), pinned: true),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: 80,
              itemBuilder: (context, index) => Container(
                alignment: Alignment.center,
                color: Colors.blueAccent,
                child: Text(
                  '商品-${index + 1}',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabBar extends SliverPersistentHeaderDelegate {
  int activeTabIndex = 0;
  List<String> foodCategories = const [
    '地方菜系',
    '奶茶咖啡',
    '便当简餐',
    '汉堡披萨',
    '小吃烧烤',
    "鲜果蔬菜",
  ];
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return TabList(tabList: foodCategories);
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
