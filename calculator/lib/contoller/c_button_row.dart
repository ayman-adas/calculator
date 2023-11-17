import 'package:calculator/widget/w_button.dart';
import 'package:flutter/material.dart';

// 4 button in one row
class CButtonRow extends StatelessWidget {
  const CButtonRow(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.click1,
      required this.click2,
      required this.click3,
      required this.click4});
  final String text1;
  final String text2;

  final String text3;
  final String text4;
  final void Function() click1;
  final void Function() click2;

  final void Function() click3;

  final void Function() click4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        children: [
          //first button
          WButton(text: text1, click: click1),
          const SizedBox(
            width: 10,
          ), //second button
          WButton(text: text2, click: click2),
          const SizedBox(
            width: 10,
          ), //third button
          WButton(text: text3, click: click3),
          const SizedBox(
            width: 10,
          ), //forth button
          WButton(text: text4, click: click4)
        ],
      ),
    );
  }
}
