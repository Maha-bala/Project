import 'package:flutter/material.dart';

class Cals extends StatefulWidget {
  const Cals({super.key});

  @override
  State<Cals> createState() => _CalsState();
}

class _CalsState extends State<Cals> {
  TextEditingController ctrl = TextEditingController();

  String val1 = "", val2 = "", optr = "";
  bool clk = false;

  void clearAll() {
    setState(() {
      val1 = "";
      val2 = "";
      optr = "";
      ctrl.text = "";
      clk = false;
    });
  }

  void addDigit(String digit) {
    setState(() {
      if (clk) {
        val2 += digit;
        ctrl.text = val2;
      } else {
        val1 += digit;
        ctrl.text = val1;
      }
    });
  }

  void setOperator(String operator) {
    setState(() {
      optr = operator;
      clk = true;
      ctrl.text = operator;
    });
  }

  void calculate() {
    try {
      int a = int.parse(val1);
      int b = int.parse(val2);
      int res = 0;

      if (optr == "+") res = a + b;
      if (optr == "-") res = a - b;
      if (optr == "*") res = a * b;
      if (optr == "/") {
        if (b != 0) res = a ~/ b;
        else {
          ctrl.text = "Err";
          return;
        }
      }
      if (optr == "%") {
        if (b != 0) res = a % b;
        else {
          ctrl.text = "Err";
          return;
        }
      }

      setState(() {
        ctrl.text = res.toString();
        val1 = res.toString();
        val2 = "";
        optr = "";
        clk = false;
      });
    } catch (e) {
      ctrl.text = "Err";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: ctrl,
              readOnly: true,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(onPressed: () => clearAll(), child: Text("AC")),
                ElevatedButton(onPressed: () => setOperator("%"), child: Text("%")),
                ElevatedButton(onPressed: () => setOperator("/"), child: Text("/")),
                ElevatedButton(onPressed: () => setOperator("*"), child: Text("*")),
                ElevatedButton(onPressed: () => addDigit("7"), child: Text("7")),
                ElevatedButton(onPressed: () => addDigit("8"), child: Text("8")),
                ElevatedButton(onPressed: () => addDigit("9"), child: Text("9")),
                ElevatedButton(onPressed: () => setOperator("-"), child: Text("-")),
                ElevatedButton(onPressed: () => addDigit("4"), child: Text("4")),
                ElevatedButton(onPressed: () => addDigit("5"), child: Text("5")),
                ElevatedButton(onPressed: () => addDigit("6"), child: Text("6")),
                ElevatedButton(onPressed: () => setOperator("+"), child: Text("+")),
                ElevatedButton(onPressed: () => addDigit("1"), child: Text("1")),
                ElevatedButton(onPressed: () => addDigit("2"), child: Text("2")),
                ElevatedButton(onPressed: () => addDigit("3"), child: Text("3")),
                ElevatedButton(onPressed: () => calculate(), child: Text("=")),
                ElevatedButton(onPressed: () => addDigit("0"), child: Text("0")),
                ElevatedButton(onPressed: () => addDigit("00"), child: Text("00")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
