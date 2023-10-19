import 'dart:math';

import 'package:calculator/contoller/c_button_row.dart';
import 'package:calculator/model/m_number.dart';
import 'package:calculator/model/m_operator.dart';
import 'package:calculator/view/v_answer.dart';
import 'package:flutter/material.dart';

late num data1;

String data2 = '';

String ope = '';

void operator() {
  switch (ope) {
    case '':
      break;
    case '/':
      data1 /= double.parse(data2);
      ope = '';
      data2 = data1.toString();

      break;
    case 'X':
      data1 *= double.parse(data2);
      ope = '';
      data2 = data1.toString();

      break;
    case '+':
      data1 += double.parse(data2);
      ope = '';
      data2 = data1.toString();

      break;
    case '-':
      data1 -= double.parse(data2);
      ope = '';
      data2 = data1.toString();

      break;
    case '^':
      data1 = pow((data1), int.parse(data2));
      ope = '';
      data2 = data1.toString();
      break;
  }
}

class VBody extends StatefulWidget {
  const VBody({super.key});

  @override
  State<VBody> createState() => _VBodyState();
}

class _VBodyState extends State<VBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
          width: 10,
          color: const Color.fromARGB(255, 0, 255, 8),
        )),
        child: Column(
          children: [
            VAnswer(data: data2),
            const Divider(height: 20, color: Colors.orange),
            CButtonRow(
                text1: MOperator.clear,
                text2: MOperator.del,
                text3: MOperator.pow,
                text4: MOperator.divide,
                click1: () {
                  data1 = 0;
                  data2 = '';
                  ope = '';
                  setState(() {});
                },
                click3: () {
                  operator();

                  data1 = double.parse(data2);
                  ope = '^';
                  data2 = '';
                  setState(() {});
                },
                click2: () {
                  if (data2.length == 1) {
                    data2 = '';
                  } else {
                    data2 = data2.substring(0, data2.length - 1);
                  }

                  setState(() {});
                },
                click4: () {
                  operator();

                  data1 = double.parse(data2);
                  data2 = '';

                  ope = '/';
                  setState(() {});
                }),
            const SizedBox(
              height: 20,
            ),
            CButtonRow(
                text1: MNumber.seven,
                text2: MNumber.eight,
                text3: MNumber.nine,
                text4: MOperator.miltiply,
                click1: () {
                  data2 += '7';
                  setState(() {});
                },
                click2: () {
                  data2 += '8';

                  setState(() {});
                },
                click3: () {
                  data2 += '9';

                  setState(() {});
                },
                click4: () {
                  operator();

                  data1 = double.parse(data2);
                  ope = 'X';
                  data2 = '';
                  setState(() {});
                }),
            const SizedBox(
              height: 20,
            ),
            CButtonRow(
                text1: MNumber.four,
                text2: MNumber.five,
                text3: MNumber.six,
                text4: MOperator.minus,
                click1: () {
                  data2 += '4';

                  setState(() {});
                },
                click2: () {
                  data2 += '5';

                  setState(() {});
                },
                click3: () {
                  data2 += '6';

                  setState(() {});
                },
                click4: () {
                  operator();

                  data1 = double.parse(data2);
                  ope = '-';
                  data2 = '';

                  setState(() {});
                }),
            const SizedBox(
              height: 20,
            ),
            CButtonRow(
                text1: MNumber.one,
                text2: MNumber.two,
                text3: MNumber.three,
                text4: MOperator.plus,
                click1: () {
                  data2 += '1';

                  setState(() {});
                },
                click2: () {
                  data2 += '2';

                  setState(() {});
                },
                click3: () {
                  data2 += '3';

                  setState(() {});
                },
                click4: () {
                  operator();

                  data1 = double.parse(data2);
                  ope = '+';
                  data2 = '';
                  setState(() {});
                }),
            const SizedBox(
              height: 20,
            ),
            CButtonRow(
                text1: MOperator.plMi,
                text2: MNumber.zero,
                text3: MOperator.dot,
                text4: MOperator.equal,
                click1: () {
                  if (data2.startsWith('-')) {
                    data2 = data2.substring(1, data2.length);
                  } else if (data2 == '') {
                  } else {
                    data2 = '-$data2';
                  }
                  setState(() {});
                },
                click2: () {
                  data2 += '0';
                  setState(() {});
                },
                click3: () {
                  if (data2.contains('.')) {
                  } else {
                    data2 += '.';
                  }
                  setState(() {});
                },
                click4: () {
                  // data2 = data1;
                  operator();
                  // data1 = 0;
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
