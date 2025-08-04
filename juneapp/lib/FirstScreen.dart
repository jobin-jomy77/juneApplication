import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              RawMaterialButton(onPressed: () {
              },
                fillColor: Colors.white10,
                elevation: 2,
                child: Icon(Icons.drag_handle),
                shape: CircleBorder(
                ),

                ),
            ],
          ),


          Padding(
            padding: const EdgeInsets.only(left: 25,top: 5),
            child: Text("Welcome to our App",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25,top: 5),
            child: Text("This is the First Screen of our App",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
          )
        ],
      ),
    );
  }
}