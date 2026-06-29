import 'package:flutter/material.dart';

class GoodDetail extends StatefulWidget {
  final int? id;
  const GoodDetail({super.key, this.id});

  @override
  State<GoodDetail> createState() => _GoodDetailState();
}

class _GoodDetailState extends State<GoodDetail> {
  // String _id = "";
  // @override
  // void initState() {
  //   super.initState();
  //   // 获取路由参数
  //   Future.microtask(() {
  //     if (context.mounted && ModalRoute.of(context) != null) {
  //       final arguments =
  //           ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
  //       debugPrint(arguments['id'].toString());
  //       setState(() {
  //         _id = arguments['id'].toString();
  //       });
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品详情${widget.id}'), centerTitle: true),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('返回上一级'),
        ),
      ),
    );
  }
}
