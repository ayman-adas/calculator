import 'package:flutter/material.dart';

class WButton extends StatelessWidget {
  const WButton({super.key, required this.text, required this.click});
  final String text;
  final void Function() click;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(234, 85, 79, 79)),
          foregroundColor:
              MaterialStatePropertyAll(Color.fromARGB(255, 0, 255, 8)),
          shape: MaterialStatePropertyAll(CircleBorder()),
          minimumSize: MaterialStatePropertyAll(Size(85, 85))),
      child: Text(
        text,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
