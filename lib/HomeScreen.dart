import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        title: Text('Digital Assistant'),
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            const bath = SnackBar(
                              content: Text("Bath"),
                            );

                            ScaffoldMessenger.of(context).showSnackBar(bath);
                          },
                          child: Image(
                            image: AssetImage('images/bath.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            const h20 = SnackBar(
                              content: Text("Water"),
                            );

                            ScaffoldMessenger.of(context).showSnackBar(h20);
                          },
                          child: Image(
                            image: AssetImage('images/drink-water.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            const food = SnackBar(
                              content: Text("Food Arriving Soon"),
                            );

                            ScaffoldMessenger.of(context).showSnackBar(food);
                          },
                          child: Image(
                            image: AssetImage('images/food.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            const mosquito = SnackBar(
                              content: Text("Mosquitoes"),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(mosquito);
                          },
                          child: Image(
                            image: AssetImage('images/mosquito.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            const snackBar = SnackBar(
                              content: Text("Tissues Coming Soon"),
                            );

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          child: Image(
                            image: AssetImage('images/tissue-box.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            const toilet = SnackBar(
                              content: Text("Toilet"),
                            );

                            ScaffoldMessenger.of(context).showSnackBar(toilet);
                          },
                          child: Image(
                            image: AssetImage('images/toilet.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            print("The Button is Pressed");
                          },
                          child: Image(
                            image: AssetImage('images/icon.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            print("The Button is Pressed");
                          },
                          child: Image(
                            image: AssetImage('images/icon.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            print("The Button is Pressed");
                          },
                          child: Image(
                            image: AssetImage('images/icon.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            print("The Button is Pressed");
                          },
                          child: Image(
                            image: AssetImage('images/icon.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            print("The Button is Pressed");
                          },
                          child: Image(
                            image: AssetImage('images/icon.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            print("The Button is Pressed");
                          },
                          child: Image(
                            image: AssetImage('images/icon.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            print("The Button is Pressed");
                          },
                          child: Image(
                            image: AssetImage('images/icon.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        color: Colors.orange[100],
                        child: TextButton(
                          onPressed: () {
                            print("The Button is Pressed");
                          },
                          child: Image(
                            image: AssetImage('images/icon.png'),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}