import 'package:day3_calculator/Widgets/button.dart';
import 'package:day3_calculator/Widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class MyCalculator extends StatefulWidget 
{
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  String _userInput = '';
  String _answer = '';

  calculation({required String number}) {
    _userInput += number;
    setState(() {});
  }

  answer() {
    Parser p = Parser();
    Expression expression = p.parse(_userInput);
    ContextModel contextModel = ContextModel();
    double evaluate = expression.evaluate(EvaluationType.REAL, contextModel);
    _answer = evaluate.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        _userInput.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        _answer.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(
                        title: "AC",
                        onClick: () {
                          _userInput = '';
                          _answer = '';
                          setState(() {});
                        },

                      ),

                      

                      MyButton(
                        title: "+/-",
                        onClick: () {
                          calculation(number: '+/-');
                        },
                      ),
                      MyButton(
                        title: '%',
                        onClick: () 
                        {
                          calculation(number: '%');
                        },

                      ),
                      MyButton(
                        colors: customOrange,
                        title: '/',
                        onClick: () {
                          calculation(number: '/');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: "7",
                        onClick: () {
                          calculation(number: '7');
                        },
                      ),
                      MyButton(
                        title: "8",
                        onClick: () {
                          calculation(number: '8');
                        },
                      ),
                      MyButton(
                        title: '9',
                        onClick: () {
                          calculation(number: '9');
                        },
                      ),
                      MyButton(
                        colors: customOrange,
                        title: 'x',
                        onClick: () {
                          calculation(number: '*');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: "4",
                        onClick: () {
                          calculation(number: '4');
                        },
                      ),
                      MyButton(
                        title: "5",
                        onClick: () {
                          calculation(number: '5');
                        },
                      ),
                      MyButton(
                        title: '6',
                        onClick: () {
                          calculation(number: '6');
                        },
                      ),
                      MyButton(
                        colors: customOrange,
                        title: '-',
                        onClick: () {
                          calculation(number: '-');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: "1",
                        onClick: () {
                          calculation(number: '1');
                        },
                      ),
                      MyButton(
                        title: "2",
                        onClick: () {
                          calculation(number: '2');
                        },
                      ),
                      MyButton(
                        title: '3',
                        onClick: () {
                          calculation(number: '3');
                        },
                      ),
                      MyButton(
                        colors: customOrange,
                        title: '+',
                        onClick: () {
                          calculation(number: '+');
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: "0",
                        onClick: () {
                          calculation(number: '0');
                        },
                      ),
                      MyButton(
                        title: ".",
                        onClick: () {
                          calculation(number: '.');
                        },
                      ),
                      MyButton(
                        title: 'DEL',
                        onClick: () {
                          _userInput =
                              _userInput.substring(0, _userInput.length - 1);
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '=',
                        colors: customOrange,
                        onClick: () {
                          answer();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
