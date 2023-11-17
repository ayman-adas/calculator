import 'package:flutter/material.dart';

//answer view
class VAnswer extends StatelessWidget {
  const VAnswer({super.key, required this.answer});
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.fromLTRB(30, 220, 0, 0),
      child: Text(
        answer,
        //color for text in answer view
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
      ),
    );
  }
}
