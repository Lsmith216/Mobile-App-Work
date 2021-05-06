import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int num1 = 0, num2 = 0, num3 = 0, num4 = 0, num5 = 0, num6 = 0, answer;

  void add() {
    setState(() {
      answer = num1 + num2 + num3 + num4 + num5 + num6;
    });
  }

//title
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Razz SM'),
          centerTitle: true,
        ),
        body: Container(
            child: Container(
                padding: const EdgeInsets.fromLTRB(20, 15, 10, 10),
                child: Column(children: <Widget>[
                  TextField(
                    decoration: InputDecoration(hintText: 'Netflix '),
                    onChanged: (value) {
                      setState(() {
                        num1 = num.parse(value);
                      });
                    },
                  ),

                  //the code above is for the first box on the apps page
                  //the next 5 sections down are the other boxes on the screen
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                      decoration: InputDecoration(hintText: 'Amazon '),
                      onChanged: (value) {
                        setState(() {
                          num2 = num.parse(value);
                        });
                      }),

                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                      decoration: InputDecoration(hintText: 'Disney Plus '),
                      onChanged: (value) {
                        setState(() {
                          num3 = num.parse(value);
                        });
                      }),

                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                      decoration: InputDecoration(hintText: 'Sky '),
                      onChanged: (value) {
                        setState(() {
                          num4 = num.parse(value);
                        });
                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                      decoration: InputDecoration(hintText: 'Spotify '),
                      onChanged: (value) {
                        setState(() {
                          num5 = num.parse(value);
                        });
                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                      decoration: InputDecoration(hintText: 'Now TV '),
                      onChanged: (value) {
                        setState(() {
                          num6 = num.parse(value);
                        });
                      }),

//This box at the bottom is the box that calculates all of the numbers inputed to work out the total cost

                  SizedBox(height: 10.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.cyanAccent,
                          child: Text('Total?'),
                          onPressed: () {
                            add();
                          },
                        ),

//this section outputs the answer after all the values are imputed

                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Total Spent Monthly Is £: $answer'),
                        SizedBox(
                          height: 10.0,
                        ),
                      ])
                ]))));
  }
}
