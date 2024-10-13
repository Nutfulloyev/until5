import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FildNumberClass extends StatefulWidget {
  final String labelText;

  const FildNumberClass({super.key, required this.labelText});

  @override
  State<FildNumberClass> createState() => _FildNumberClassState();
}

class _FildNumberClassState extends State<FildNumberClass> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 50,
      width: screenWidth * 0.9,
      child: TextField(
        keyboardType: TextInputType.number, // Faqat sonlar uchun klaviatura
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly, // Faqat raqamlar kiradi
        ],
        decoration: InputDecoration(
          labelText: widget.labelText, // Yorliq matni
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(8.0), // Qirralari yumaloq chegaralar
          ),
        ),
      ),
    );
  }
}
