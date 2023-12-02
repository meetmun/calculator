import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String ans = "";
  String ans1 = "";
  String finalAns = "0";
  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  "$displayText\n$finalAns",
                  style: TextStyle(fontSize: 80),
                ),
              )),
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("AC",
                      style: TextStyle(fontSize: 40, color: Colors.black)),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("+/-",
                      style: TextStyle(fontSize: 40, color: Colors.black)),
                ),
                Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("%",
                      style: TextStyle(fontSize: 40, color: Colors.black)),
                ),
                InkWell(
                  onTap: () => add("/"),
                  child: Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.orange.shade300,
                        borderRadius: BorderRadius.circular(70)),
                    child: Text("÷",
                        style: TextStyle(fontSize: 50, color: Colors.white70)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                InkWell(onTap: () => add("7"),
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("7",
                        style: TextStyle(fontSize: 40, color: Colors.black)),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("8",
                      style: TextStyle(fontSize: 40, color: Colors.black)),
                ),
                Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("9",
                      style: TextStyle(fontSize: 40, color: Colors.black)),
                ),
                Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.orange.shade300,
                      borderRadius: BorderRadius.circular(70)),
                  child: Text("X",
                      style: TextStyle(fontSize: 50, color: Colors.white70)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () => add("4"),
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("4",
                        style: TextStyle(fontSize: 40, color: Colors.black)),
                  ),
                ),
                InkWell(
                  onTap: () => add("5"),
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("5",
                        style: TextStyle(fontSize: 40, color: Colors.black)),
                  ),
                ),
                InkWell(onTap: () => add("6"),                  child: Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("6",
                        style: TextStyle(fontSize: 40, color: Colors.black)),
                  ),
                ),
                InkWell(onTap: () => add("-"),
                  child: Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.orange.shade300,
                        borderRadius: BorderRadius.circular(70)),
                    child: Text("-",
                        style: TextStyle(fontSize: 50, color: Colors.white70)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                InkWell(
                  onTap: () => add("1"),
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("1",
                        style: TextStyle(fontSize: 40, color: Colors.black)),
                  ),
                ),
                InkWell(
                  onTap: () => add("2"),
                  child: Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("2",
                        style: TextStyle(fontSize: 40, color: Colors.black)),
                  ),
                ),
                InkWell(onTap: () => add("3"),
                  child: Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("3",
                        style: TextStyle(fontSize: 40, color: Colors.black)),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.orange.shade300,
                      borderRadius: BorderRadius.circular(70)),
                  child: Text("+",
                      style: TextStyle(fontSize: 50, color: Colors.white70)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 170,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("0",
                      style: TextStyle(fontSize: 40, color: Colors.black)),
                ),
                InkWell(
                  onTap: () {
                    if (!ans.contains(".")) {
                      add(".");
                    }
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(".",
                        style: TextStyle(fontSize: 40, color: Colors.black)),
                  ),
                ),
                InkWell(
                  onTap: () => add("="),
                  child: Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.orange.shade300,
                        borderRadius: BorderRadius.circular(80)),
                    child: Text("=",
                        style: TextStyle(fontSize: 50, color: Colors.white70)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  add(String a) {
    if(a != "="){
      displayText += a;
    }
    if (a == "/") {
      ans1 = ans;
      ans = "";
      i = 1;
    } else if (a == "=") {
      if (i == 1) {
        double c = double.parse(ans1) / double.parse(ans);
        finalAns = c.toString();
        ans=finalAns;
      }
    } else {
      ans = ans + a;
    }
    setState(() {});
  }

  var i = 0;
}
