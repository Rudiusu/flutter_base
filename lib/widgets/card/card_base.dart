import 'package:flutter/material.dart';

class CardBase extends StatelessWidget {
  final Widget children;
  const CardBase(this.children, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10),

      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.black26),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: children,
    );
  }
}
