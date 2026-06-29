import 'package:flutter/material.dart';
// import './good_detail.dart';

class ScrollHomePage extends StatefulWidget {
  const ScrollHomePage({super.key});

  @override
  State<ScrollHomePage> createState() => _ScrollHomePageState();
}

class _ScrollHomePageState extends State<ScrollHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页'), centerTitle: true),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: PageView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      "轮播图${index + 1}",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  );
                },
                itemCount: 5,
              ),
            ),
          ),
          SliverPersistentHeader(delegate: TabBar(), pinned: true),
          SliverPadding(
            padding: .all(10),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 200,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/goodDetails',
                      arguments: {"id": index + 1},
                    );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => GoodDetail(id: index + 1),
                    //   ),
                    // );
                  },
                  child: Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      "商品${index + 1}",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                );
              },
              itemCount: 20,
            ),
          ),

          // SliverList.separated(
          //   itemCount: 30,
          //   itemBuilder: (content, index) => CardBase(
          //     Container(
          //       height: 120,
          //       alignment: Alignment.center,
          //       child: Text('商品-${index + 1}', style: TextStyle(fontSize: 20)),
          //     ),
          //   ),
          //   separatorBuilder: (context, index) => SizedBox(height: 10),
          // ),
        ],
      ),
    );
  }
}

class TabBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
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
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Text('标签${index + 1}'),
          );
        },
        itemCount: 10,
      ),
    );
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
