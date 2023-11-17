import 'dart:math';

import 'package:calculator/contoller/c_button_row.dart';
import 'package:calculator/model/m_number.dart';
import 'package:calculator/model/m_operator.dart';
import 'package:calculator/view/v_answer.dart';
import 'package:flutter/material.dart';

//definition
late num num1;

String num2 = '';

String ope = '';

String ans = '';

void operator() {
  //to check what is the operator and do its operation

  switch (ope) {
// to check there no opweation
    case '':
      break;
    //divide operation
    case '/':
      //to convert string to doule and make its operation
      num1 /= double.parse(num2);
      ope = '';
      //to check is integer number or double
      if (num1 == num1.toInt()) {
        //make it an integer
        num2 = num1.toInt().toString();
      } else {
        num2 = num1.toString();
      }
      ans = num2;
      ope = '';
      break;
    //multiply operation
    case 'X':
      num1 *= double.parse(num2);
      ope = '';
      if (num1 == num1.toInt()) {
        num2 = num1.toString().substring(0, num1.toString().length - 2);
      } else {
        num2 = num1.toString();
      }
      ans = num2;
      ope = '';
      break;
    //plus operation
    case '+':
      num1 += double.parse(num2);
      ope = '';
      if (num1 == num1.toInt()) {
        num2 = num1.toString().substring(0, num1.toString().length - 2);
      } else {
        num2 = num1.toString();
      }
      ans = num2;
      ope = '';
      break;
    //minus operaton
    case '-':
      num1 -= double.parse(num2);
      ope = '';
      if (num1 == num1.toInt()) {
        num2 = num1.toString().substring(0, num1.toString().length - 2);
      } else {
        num2 = num1.toString();
      }
      ans = num2;
      ope = '';
      break;
    //power operation
    case '^':
      num1 = pow((num1), int.parse(num2));
      ope = '';

      if (num1 == num1.toInt()) {
        num2 = num1.toString().substring(0, num1.toString().length - 2);
      } else {
        num2 = num1.toString();
      }
      ans = num2;
      ope = '';
      break;
  }
}

class VBody extends StatefulWidget {
  const VBody({super.key});

  @override
  State<VBody> createState() => _VBodyState();
}

class _VBodyState extends State<VBody> {
  String view() {
    //take answer and show it
    if (ope != '' && ans != '' && num2 == '') {
      return ans;
    } else {
      //take the number you insert and show it
      return num2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //background for app
      color: Colors.black,
      child: Column(
        children: [
          //view answer
          VAnswer(answer: view()),
          //divider between answer and buttons
          const Divider(height: 20, color: Colors.orange),
          CButtonRow(
              // text 1 to make clear for number
              // text 2 to make delete the last number
              // text 3 to make power between numbers
              // text 4 to make divide between number
              text1: MOperator.clear,
              text2: MOperator.del,
              text3: MOperator.pow,
              text4: MOperator.divide,
              click1: () {
                num1 = 0;
                num2 = '';
                ope = '';
                ans = '';
                setState(() {});
              },
              click3: () {
                operator();

                num1 = double.parse(num2);
                ope = '^';
                num2 = '';
                setState(() {});
              },
              click2: () {
                if (num2.length == 1) {
                  num2 = '';
                } else {
                  num2 = num2.substring(0, num2.length - 1);
                }

                setState(() {});
              },
              click4: () {
                operator();

                num1 = double.parse(num2);
                num2 = '';

                ope = '/';
                setState(() {});
              }),
          const SizedBox(
            height: 20,
          ),
          CButtonRow(
              // text 1 to insert number 7
              // text 2 to insert number 8
              // text 3 to insert number 9
              // text 4 to make multiply between number
              text1: MNumber.seven,
              text2: MNumber.eight,
              text3: MNumber.nine,
              text4: MOperator.miltiply,
              click1: () {
                num2 += '7';
                setState(() {});
              },
              click2: () {
                num2 += '8';

                setState(() {});
              },
              click3: () {
                num2 += '9';

                setState(() {});
              },
              click4: () {
                operator();

                num1 = double.parse(num2);
                ope = 'X';
                num2 = '';
                setState(() {});
              }),
          const SizedBox(
            height: 20,
          ),
          CButtonRow(
              // text 1 to insert number 4
              // text 2 to insert number 5
              // text 3 to insert number 6
              // text 4 to make minus between number
              text1: MNumber.four,
              text2: MNumber.five,
              text3: MNumber.six,
              text4: MOperator.minus,
              click1: () {
                num2 += '4';

                setState(() {});
              },
              click2: () {
                num2 += '5';

                setState(() {});
              },
              click3: () {
                num2 += '6';

                setState(() {});
              },
              click4: () {
                operator();

                num1 = double.parse(num2);
                ope = '-';
                num2 = '';

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
                num2 += '1';

                setState(() {});
              },
              click2: () {
                num2 += '2';

                setState(() {});
              },
              click3: () {
                num2 += '3';

                setState(() {});
              },
              click4: () {
                operator();
                num1 = double.parse(num2);
                ope = '+';
                num2 = '';
                setState(() {});
              }),
          const SizedBox(
            height: 20,
          ),
          CButtonRow(
              // text 1 to make a number negitive if plus and plus if negetive
              // text 2 to insert number 0
              // text 3 to insert  dot .
              // text 4 to make equal
              text1: MOperator.plMi,
              text2: MNumber.zero,
              text3: MOperator.dot,
              text4: MOperator.equal,
              click1: () {
                if (num2.startsWith('-')) {
                  num2 = num2.substring(1, num2.length);
                } else if (num2 == '') {
                } else {
                  num2 = '-$num2';
                }
                setState(() {});
              },
              click2: () {
                num2 += '0';
                setState(() {});
              },
              click3: () {
                if (num2.contains('.')) {
                } else {
                  num2 += '.';
                }
                setState(() {});
              },
              click4: () {
                // num2 = num1;
                operator();
                // num1 = 0;
                setState(() {});
              }),
        ],
      ),
    );
  }
}
