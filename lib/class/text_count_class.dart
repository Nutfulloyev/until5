import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextCountClass extends StatefulWidget {
  final int maxLength;
  final String labelText;

  const TextCountClass({
    super.key,
    required this.maxLength,
    required this.labelText,
  });

  @override
  _TextCountClassState createState() => _TextCountClassState();
}

class _TextCountClassState extends State<TextCountClass> {
  final TextEditingController _controller = TextEditingController();
  bool _isError = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 50,
      width: screenWidth * 0.9,
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        maxLength: widget.maxLength,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.labelText,
          counterText: '',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: _isError ? Colors.red : Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: _isError ? Colors.red : Colors.blue,
            ),
          ),
        ),
        onChanged: (value) {
          setState(() {
            _isError = value.length != widget.maxLength;
          });
        },
      ),
    );
  }
}
