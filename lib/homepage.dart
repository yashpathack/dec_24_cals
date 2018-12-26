import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 - num2;
    });
  }

  void doMal() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = sum = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      t1.text = "Enter number 1";
      t2.text = "Enter number 2";
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 100.0, right: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Container(
                  padding: EdgeInsets.only(bottom: 5.0, top: 5.0),
                  decoration: BoxDecoration(
                    //color: Colors.black54,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(
                          2, 4), // 10% of the width, so there are ten blinds.
                      colors: [
                        Colors.deepPurpleAccent,
                        Colors.pink,
                      ], // whitish to gray
                      tileMode: TileMode
                          .mirror, // repeats the gradient over the canvas
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    //shape: BoxShape.rectangle
                  ),
                  alignment: Alignment.center,
                  // padding: EdgeInsets.only(
                  //     left: 7.0, right: 10.0, top: 5.0, bottom: 5.0),
                  child: Text(
                    "Calculator",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/try3.jpg"),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black45, BlendMode.colorBurn))),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Container(
                  //   padding: EdgeInsets.only(right: 0),
                  //   //padding: Expanded,
                  //   child: Image(
                  //     color: Colors.transparent,
                  //     colorBlendMode: BlendMode.color,
                  //     image: AssetImage("images/try.png"),
                  //     height: 48.0,
                  //     width: 48.0,
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.all(10.0),
                  //),
                  Container(
                      decoration: BoxDecoration(
                        //image: AssetImage("images/try.png")
                        // color: Colors.red,
                        shape: BoxShape.rectangle,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            //color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          padding: EdgeInsets.all(5.0),
                          // padding: EdgeInsets.only(
                          //     left: 145.0, right: 144.0, top: 20, bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment(1,
                                  1), // 10% of the width, so there are ten blinds.
                              colors: [
                                Colors.pink,
                                //Colors.transparent,
                                Colors.deepPurpleAccent,
                              ], // whitish to gray
                              tileMode: TileMode
                                  .clamp, // repeats the gradient over the canvas
                            ),
                          ),
                          child: Text(
                            "$sum",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              controller: t1,
              style: TextStyle(
                color: Colors.white,
              ),
              keyboardType: TextInputType.number,
              scrollPadding: EdgeInsets.all(23.0),
              decoration: InputDecoration(

                  //enabledBorder: InputBorder.none,
                  fillColor: Colors.white30,
                  filled: true,
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  //contentPadding: EdgeInsetsGeometry.lerp(5.0),
                  hintText: "Enter number 1",
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  fillColor: Colors.white30,
                  filled: true,
                  contentPadding: EdgeInsets.all(10.0),
                  isDense: true,
                  border: OutlineInputBorder(
                      //borderSide: BorderSide(color: Colors.red),
                      //gapPadding: 34.0,
                      borderRadius: BorderRadius.circular(30.0)),
                  hintText: "Enter number 2",
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        //padding: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doAdd,
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          //elevation: 7.0,
                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        //padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doSub,
                          child: Text(
                            "–",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        // padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doMal,
                          child: Text(
                            "×",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),

                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                1.2), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        //padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doDiv,
                          child: Text(
                            "÷",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          // color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        //padding: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doAdd,
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          //elevation: 7.0,
                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        //padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doSub,
                          child: Text(
                            "4",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        // padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doMal,
                          child: Text(
                            "7",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),

                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                1.2), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        //padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doDiv,
                          child: Text(
                            "=",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          // color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        //padding: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doAdd,
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          //elevation: 7.0,
                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        //padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doSub,
                          child: Text(
                            "5",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        // padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doMal,
                          child: Text(
                            "8",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),

                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                1.2), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        //padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doDiv,
                          child: Text(
                            "0",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          // color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        //padding: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                spreadRadius: 5.0,
                                blurRadius: 10.0,
                                offset: Offset(33, 40))
                          ],
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doAdd,
                          child: Text(
                            "3",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          //elevation: 7.0,
                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        //padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doSub,
                          child: Text(
                            "6",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),
                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                3), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        // padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: doMal,
                          child: Text(
                            "9",
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 40.0),
                          ),

                          //color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0,
                                1.2), // 10% of the width, so there are ten blinds.
                            colors: [
                              Colors.pink,
                              Colors.deepPurpleAccent
                            ], // whitish to gray
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        //padding: EdgeInsets.only(top: 5.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          onPressed: clear,
                          child: Icon(Icons.backspace),
                          // color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
          ],
        ),
      ),
    );
  }
}
