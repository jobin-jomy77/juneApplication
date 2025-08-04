import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> nonVegItems = [
    "Chicken",
    "Fish",
    "Red Meat"
  ];
  @override
  Widget build(BuildContext context) {
    var card = Card(
                  child: Text(
                    "🐟Fish"
                  ),
                );
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
            padding: const EdgeInsets.only(left: 25,top: 65),
            child: Text("This is the First Screen of our App",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
          ),

          Padding(
            padding: const EdgeInsets.all(100),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: Icon(Icons.search),
                hintText: "Search",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            
              ),
            ),
            Flexible(
              child: SizedBox(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:  nonVegItems.length,
                  itemBuilder: (context,index){
                    return Card(
                      color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        " ${nonVegItems[index]}"
                      ),
                    ),
                  );
                  },),
              ),
            ),

            Row(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "🍗Chicken"
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "🐟Fish"
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "🐐Red Meat"
                    ),
                  ),
                )
              ],
            )
          
        ],
      ),
    );
  }
}