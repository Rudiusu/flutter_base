import 'package:flutter/material.dart';

// 首页--无状态组件
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   // const HomePage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle: true, title: Text("首页")),
//       body: Center(child: Text("内容")),
//       bottomNavigationBar: SizedBox(
//         height: 80,
//         child: Center(child: Text("底部栏")),
//       ),
//     );
//   }
// }
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("首页")),
      body: Center(child: Text("内容")),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Center(child: Text("底部栏")),
      ),
    );
  }
}
