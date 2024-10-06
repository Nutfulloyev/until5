import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarClass extends StatelessWidget {

  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 50,
          width: screenWidth*0.55,
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Search"),
          ),
        ),
        SizedBox(
          width: screenWidth*0.12
        ),
        Container(
            height: 40,
            width: 30,
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.person))),
      ],
    );
  }
}
