import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddBonusCard extends StatelessWidget {

  final String title;
  final String description;
  final Icon icon;
  final Color backgroundColor;

  const AddBonusCard({super.key, required this.title, required this.description, required this.icon, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: Offset(-1, -1),
          ),
        ],
      ),
      width: 120,
      height: 120,
      child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title, style: const TextStyle(fontFamily: 'M PLUS Rounded 1c',color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  icon,
                  Text(description, style: const TextStyle(fontFamily: 'M PLUS Rounded 1c',color: Colors.black, fontSize: 10),textAlign: TextAlign.center,),
                ],
              ),
            ),
            const Positioned(top: -2, right: -2, child: Icon(Icons.add_circle_outline_outlined, color: Colors.black, size: 22,)),
          ],
      ),
    );
  }
}
