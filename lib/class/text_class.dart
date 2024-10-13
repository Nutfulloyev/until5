import 'package:flutter/material.dart';

class TextClass extends StatefulWidget {
  final List<String> items;
  final String text;
  final String initialSelectedItem;

  const TextClass({
    super.key,
    required this.items,
    required this.text,
    required this.initialSelectedItem,
  });

  @override
  _TextClassState createState() => _TextClassState();
}

class _TextClassState extends State<TextClass> {
  late String _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.initialSelectedItem.isNotEmpty
        ? widget.initialSelectedItem
        : (widget.items.isNotEmpty ? widget.items[0] : 'Тип товара');
  }

  void _showDropdown() {
    Color textColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.black // Qorong'i rejimda rang
        : Colors.white; // Yorug' rejimda rang
    Color textColor1 = Theme.of(context).brightness == Brightness.dark
        ? Colors.white // Qorong'i rejimda rang
        : Colors.black;


    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: textColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
            child: ListView.builder(
              itemCount: widget.items.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    widget.items[index],
                    style: TextStyle(color: textColor1), // Rangni bu yerda ishlatish
                  ),
                  onTap: () {
                    setState(() {
                      _selectedItem = widget.items[index];
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.black // Qorong'i rejimda rang
        : Colors.white;
    Color textColor1 = Theme.of(context).brightness == Brightness.dark
        ? Colors.white // Qorong'i rejimda rang
        : Colors.black;

    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: _showDropdown,
          child: AbsorbPointer(
            child: Container(
              height: 50,
              width: screenWidth * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  hintText: _selectedItem,
                  fillColor: textColor,
                  suffixIcon: Icon(Icons.arrow_drop_down, color: textColor1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
                style: const TextStyle(color: Colors.black), // Umumiy rang
              ),
            ),
          ),
        ),
      ],
    );
  }
}
