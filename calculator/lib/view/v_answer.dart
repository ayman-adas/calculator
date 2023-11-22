import 'package:flutter/material.dart';

//answer view
class VAnswer extends StatelessWidget {
  const VAnswer({super.key, required this.answer});
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      padding: const EdgeInsets.fromLTRB(30, 190, 0, 0),
      child: Text(
        answer,
        //color for text in answer view
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
      ),
    );
  }
}
