import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/class/text_fild_number_class.dart';

import '../../../../class/list_class.dart';
import '../../../../class/text_class.dart';
import '../../../../class/text_count_class.dart';

class SozdatPage extends StatefulWidget {
  static const String id = "sozdat_pageee";

  const SozdatPage({super.key});

  @override
  State<SozdatPage> createState() => _SozdatPageState();
}

class _SozdatPageState extends State<SozdatPage> {

  bool _isAlcoholChecked = false;
  bool _isExciseChecked = false;

  @override
  Widget build(BuildContext context) {
    ListClass listClass = ListClass();
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextClass(
                items: listClass.productItems,
                text: 'Тип товара',
                initialSelectedItem: 'Тип товара',
              ),
              const SizedBox(
                height: 15,
              ),
              TextClass(
                  items: listClass.productItems1,
                  text: "Тип упаковки товара",
                  initialSelectedItem: "Тип упаковки товара"),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: screenWidth * 0.9,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Наименование",
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const TextCountClass(maxLength: 14, labelText: "GTIN"),
              const SizedBox(
                height: 15,
              ),
              const FildNumberClass(labelText: "Срок годности в днях"),
              const SizedBox(
                height: 15,
              ),
              const FildNumberClass(labelText: "Количество в упаковке"),
              const SizedBox(
                height: 15,
              ),
              const TextCountClass(maxLength: 10, labelText: "Код ТН ВЭД"),
              const SizedBox(
                height: 15,
              ),
              const TextCountClass(maxLength: 17, labelText: "ИКПУ"),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: screenWidth * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Реквизиты:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Алкоголь",
                      style: TextStyle(fontSize: 13),
                    ),
                    Checkbox(
                      value: _isAlcoholChecked,
                      activeColor: Colors.blue,
                      onChanged: (bool? value) {
                        setState(() {
                          _isAlcoholChecked = value ?? false;
                        });
                      },
                    ),
                    const Text(
                      "Подакцизный",
                      style: TextStyle(fontSize: 13),
                    ),
                    Checkbox(
                      value: _isExciseChecked,
                      activeColor: Colors.blue,
                      onChanged: (bool? value) {
                        setState(() {
                          _isExciseChecked = value ?? false;
                        });
                      },
                    ),
                  ],
                ),
              ),
              if (_isAlcoholChecked)
                const Column(
                  children: [
                    FildNumberClass(labelText: "Код вида алкогольной продукции"),
                    const SizedBox(
                      height: 15,
                    ),
                    FildNumberClass(labelText: "Код алкогольной продукции:"),
                    const SizedBox(
                      height: 15,
                    ),
                    FildNumberClass(labelText: "Емкость тары(мл)"),
                    const SizedBox(
                      height: 15,
                    ),
                    FildNumberClass(labelText: "Крепкость"),
                    const SizedBox(
                      height: 15,
                    ),
                    FildNumberClass(labelText: "ИНН Производителя алкоголя"),
                    const SizedBox(
                      height: 15,
                    ),
                    FildNumberClass(labelText: "КПП Производителя алкоголя"),
                  ],
                ),
              if (_isExciseChecked)
                const Column(
                  children: [
                    SizedBox(height: 15,),
                    FildNumberClass(labelText: "Ставка акциза")
                  ],
                ),
              const SizedBox(
                height: 15,
              ),
              TextClass(
                  items: listClass.productItem2,
                  text: "Единица измерения",
                  initialSelectedItem: "Единица измерения"),
              const SizedBox(
                height: 15,
              ),
              TextClass(
                  items: listClass.productItem3,
                  text: "Происхождение товара",
                  initialSelectedItem: "Происхождение товара"),
              const SizedBox(
                height: 15,
              ),
              TextClass(
                  items: listClass.productItem4,
                  text: "НДС",
                  initialSelectedItem: "НДС"),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: screenWidth * 0.9,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Наименование полное",
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const FildNumberClass(labelText: "Вес"),
              const SizedBox(
                height: 15,
              ),
              const FildNumberClass(labelText: "Мин вес"),
              const SizedBox(
                height: 15,
              ),
              const FildNumberClass(labelText: "Макс вес"),
              const SizedBox(
                height: 15,
              ),
              const FildNumberClass(labelText: "Цена без НДЦ"),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(screenWidth * 0.4, 50),
                        backgroundColor: Colors.white),
                    onPressed: () {},
                    child: const Text(
                      "отменить",
                      style: TextStyle(color: Colors.red, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.1,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(screenWidth * 0.4, 50),
                        backgroundColor: Colors.green),
                    onPressed: () {},
                    child: const Text(
                      "создать",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 75,
              )
            ],
          ),
        ),
      ),
    );
  }
}
