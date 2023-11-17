import 'package:flutter/material.dart';

// button
class WButton extends StatelessWidget {
  const WButton({super.key, required this.text, required this.click});
  final String text;
  final void Function() click;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: ElevatedButton(
        //clickback function
        onPressed: click,
        style: const ButtonStyle(
            //background color for button
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(234, 85, 79, 79)),
            //foreground color for text in button
            foregroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 0, 255, 8)),
            // the shape of button is circular
            shape: MaterialStatePropertyAll(CircleBorder()),
            //size of button
            minimumSize: MaterialStatePropertyAll(Size(85, 85))),
        //text will be release in button
        child: Text(
          text,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
