import 'package:flutter/material.dart';
import 'Dpadbuttonwithoutlistener1.dart';

class FullDpad extends StatelessWidget {
  const FullDpad({
    super.key,
    required this.containerSize,
  });

  final double containerSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 20, 10),
      // padding: EdgeInsets.fromLTRB(0, 30, 20, 10),
      height: containerSize - 40, width: containerSize - 40,
      decoration: BoxDecoration(
        // color: Colors.blue,
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Outer shadow color
            offset: Offset(-1, 1),
            blurRadius: 4,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.3), // Inner shadow color
            offset: Offset(1, -1),
            blurRadius: 5,
            spreadRadius: -4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DPadButton(
                index: 0,
                size: 30,
                imagePath:'C:\\Users\\dell\\StudioProjects\\untitled\\build\\flutter_assets\\up.png',
                player: 1,
                
                control: 3,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DPadButton(
                  index: 1, size: 30, imagePath:'C:\\Users\\dell\\StudioProjects\\untitled\\build\\flutter_assets\\left.png', player: 1, control: 1),
              SizedBox(width: 40), // Adjust spacing
              DPadButton(
                  index: 2, size: 30, imagePath:'C:\\Users\\dell\\StudioProjects\\untitled\\build\\flutter_assets\\right.png', player: 1, control: 2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DPadButton(
                  index: 3, size:30, imagePath:'C:\\Users\\dell\\StudioProjects\\untitled\\build\\flutter_assets\\down.png', player: 1, control: 25),
            ],
          ),
        ],
      ),
    );
  }
}
