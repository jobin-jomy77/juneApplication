import 'package:flutter/material.dart';

class startScreen extends StatefulWidget {
  const startScreen({super.key});

  @override
  State<startScreen> createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(decoration: BoxDecoration(
            image: (DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/RedDot_Burger.jpg/960px-RedDot_Burger.jpg"), fit: BoxFit.cover))
          ),),
          Positioned(left: 180,top: 30,child: Text("Burger \nKING",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: "Anton"),),),
          Positioned(left: 20,top: 600,child: Text("GOOD FOOD \nTASTY FOOD",style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: "Caprasimo"),),
          ),
          
          Positioned(
            top: 800,
            left: 55,
            child: RawMaterialButton(
              fillColor: Colors.orange,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              onPressed: (){
            
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 130,right: 130,top: 10,bottom: 10),
                child: Text("Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
              ),
            ),
          ),

          Positioned(
            top: 850,
            left: 100,
            child: Row(
              children: [
                Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                Text(" Sign Up",style: TextStyle(color: Colors.white),)
              ],
            ),
          )
        
        
        
        
        
        ],
      ),
    );
  }
}