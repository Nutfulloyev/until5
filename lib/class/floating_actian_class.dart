import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/nastroyka_page.dart';

class FloatingActianClass extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, NastroykePage.id);
        },
        focusElevation: 50,
        elevation: 20,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: const Icon(
          Icons.settings,
          size: 25,
        ),
      ),
    );
  }
}
