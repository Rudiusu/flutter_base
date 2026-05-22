import 'package:flutter/material.dart';
import '../widgets/good/good_card.dart';

//首页--有状态组件
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PageState();
  }
}

class _PageState extends State<HomePage> {
  @override
  void initState() {
    debugPrint('initState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    debugPrint('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    debugPrint('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int count = 0;
  void handleAdd() {
    setState(() {
      count++;
      debugPrint("点击添加");
    });
  }

  void handleMinus() {
    setState(() {
      if (count == 0) {
        return;
      }

      count--;
      debugPrint("点击减少");
    });
  }

  //商品卡片

  List<Widget> fetchGoodList() {
    return List.generate(10, (index) {
      return GoodCard('商品${index + 1}', key: ValueKey('good$index'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("首页")),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        // margin: EdgeInsets.all(20),
        child: Align(
          alignment: AlignmentGeometry.bottomStart,
          child: Container(
            color: Colors.green,
            padding: EdgeInsets.all(20),
            child: Column(
              spacing: 20,
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.yellowAccent,
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Image.asset(
                    'lib/assets/images/bowl.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: handleAdd,
                      icon: Icon(Icons.add, color: Colors.blueAccent),
                    ),
                    Text('$count', style: TextStyle(fontSize: 20)),
                    IconButton(
                      onPressed: handleMinus,
                      icon: Icon(Icons.remove, color: Colors.blueAccent),
                    ),
                  ],
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 10,
                  runSpacing: 10,
                  children: fetchGoodList(),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: SizedBox(
        height: 80,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Color.fromRGBO(229, 231, 235, 1),
                width: 1,
              ),
            ),
          ),
          child: Center(child: Text("底部栏")),
        ),
      ),
    );
  }
}
