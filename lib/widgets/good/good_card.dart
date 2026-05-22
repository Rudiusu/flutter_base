import 'package:flutter/material.dart';

class GoodCard extends StatelessWidget {
  final String goodName;
  const GoodCard(this.goodName, {super.key});
  @override
  Widget build(content) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),

      child: Stack(
        alignment: AlignmentGeometry.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    size: 10,
                    color: Colors.amberAccent,
                  ),
                  Text(
                    '热销',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            goodName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight(600)),
          ),
        ],
      ),
    );
  }
}
