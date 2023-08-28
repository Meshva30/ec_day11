import 'package:flutter/material.dart';

class DynamicScreen extends StatefulWidget {
  const DynamicScreen({Key? key}) : super(key: key);

  @override
  State<DynamicScreen> createState() => _HomeState();
}

class _HomeState extends State<DynamicScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff164B60),
          title: Text('Dynamic List'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(

              children: [
                mybox(1),
                mybox(2),
                mybox(3),
                mybox(4),
                mybox(5),
                mybox(6),
                mybox(7),
                mybox(8),
                mybox(9),
                mybox(10),
              ],
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Text("+"),
              backgroundColor: Colors.blue,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Text("-"),
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

Widget mybox(int number) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.all(10),
    height: 90,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: (number%2==0)?Color(0xff164B60):Color(0xff075C2F6),
      borderRadius: BorderRadius.all(
        Radius.circular(
          10,
        ),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$number',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    ),
  );
}