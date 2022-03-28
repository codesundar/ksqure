import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          body: Container(
            color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Text("Hello"),
                // SizedBox(
                //   height: 10,
                // ),
                // Text("Hello"),
                // SizedBox(
                //   height: 10,
                // ),
                // Text("Hello"),
                // SizedBox(
                //   height: 10,
                // ),
                // Text("Hello"),
                Expanded(
                  child: GestureDetector(
                    child: Image.asset("assets/images/food.png", fit: BoxFit.cover),
                    onTap: (){
                      print("Clicked");
                    },
                    onDoubleTap: (){
                      print("double Clicked");
                    },
                  ),
                ),
                // Icon(Icons.star),
                TextButton(child: Text("Hello"), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    
  );
}
