import 'package:flutter/material.dart';
import '../util/hex.dart';

class billsplitter extends StatefulWidget {
  const billsplitter({Key? key}) : super(key: key);

  @override
  State<billsplitter> createState() => _billsplitterState();
}

class _billsplitterState extends State<billsplitter> {
  int _tipPercentage = 0;
  double _personCounter = 1;
  double _billamount = 0;
  Color grad_blue = Hexcolor("#33ccff");
  Color grad_purple = Hexcolor("#ff99cc");
  Color grad_shap = Hexcolor("#9F2B68");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.6),
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [grad_purple, grad_blue]),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total Per Person",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.purple.withOpacity(0.9),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "\$ ${calculateTotalPerPerson(_billamount, _personCounter, _tipPercentage)}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: grad_shap,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.blueGrey.shade100,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(
                      color: grad_purple,
                    ),
                    decoration: InputDecoration(
                      prefixText: "Bill amount",
                      prefixIcon: Icon(Icons.attach_money),
                    ),
                    onChanged: (String value) {
                      try {
                        _billamount = double.parse(value);
                      } catch (e) {
                        _billamount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Split",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  if (_personCounter > 1) {
                                    _personCounter--;
                                  }
                                },
                              );
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: grad_shap.withOpacity(0.1),
                              ),
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    color: grad_blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "$_personCounter",
                            style: TextStyle(
                              color: grad_blue,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  _personCounter++;
                                },
                              );
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: grad_shap.withOpacity(0.1),
                              ),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color: grad_blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Tip",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                "\$${(calculateTotalTip(_billamount, _personCounter, _tipPercentage)).toStringAsFixed(2)}",
                                style: TextStyle(
                                  color: grad_blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "$_tipPercentage%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: grad_blue,
                        ),
                      ),
                      Slider(
                          min: 0,
                          max: 100,
                          divisions: 20,
                          activeColor: grad_purple,
                          inactiveColor: Colors.grey,
                          value: _tipPercentage.toDouble(),
                          onChanged: ((double newvalue) {
                            setState(() {
                              _tipPercentage = newvalue.round();
                            });
                          })),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  calculateTotalPerPerson(
      double billAmount, double splitBy, int tipPercentage) {
    var totalPerPerson =
        (calculateTotalTip(billAmount, splitBy, tipPercentage) + billAmount) /
            splitBy;
    return totalPerPerson.toStringAsFixed(2);
  }

  calculateTotalTip(double billAmount, double splitBy, int tipPercentage) {
    double totalTip = 0.0;
    if (billAmount < 0 || billAmount == null || billAmount.toString().isEmpty) {
    } else {
      totalTip = (billAmount * tipPercentage) / 100;
    }
    return totalTip;
  }
}
