import 'package:flutter/material.dart';

// for button and make its style and color
class WButton extends StatelessWidget {
  const WButton({
    Key? key,
    required this.text,
    required this.click,
  }) : super(key: key);

  final String text;
  final void Function() click;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: ElevatedButton(
        onPressed: click,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(234, 85, 79, 79)),
          foregroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 0, 255, 8)),
          shape: MaterialStateProperty.all(const CircleBorder()),
          minimumSize: MaterialStateProperty.all(const Size(85, 85)),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
