import 'package:flutter/material.dart';

class TextIconCustomButton extends StatelessWidget {
  final String text;

  final Icon icon;

  final void Function() onPressed;

  final Color backgroundColor;

  const TextIconCustomButton({super.key, required this.text, required this.icon,required this.backgroundColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.only(left: 10, right: 10)),
      ),
      onPressed: onPressed,
      child: Container(
        constraints: const BoxConstraints(minHeight: 50),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 5),
            Text(text, style: const TextStyle(color: Colors.white, fontSize: 18))
          ],
        ),
      ),

    );
  }
}
