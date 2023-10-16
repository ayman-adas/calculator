import 'package:flutter/material.dart';

class VAnswer extends StatelessWidget {
  const VAnswer({super.key, required this.data});
  final num data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.fromLTRB(30, 220, 0, 0),
      child: Text(
        data.toString(),
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
      ),
    );
  }
}
