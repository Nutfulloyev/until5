import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../class/app_bar_class.dart';
import '../class/drover_class.dart';
import '../class/floating_actian_class.dart';
import 'nastroyka_page.dart';


class NaneseniePage extends StatefulWidget {
  static const String id = "nanisenie_page";

  const NaneseniePage({super.key});

  @override
  State<NaneseniePage> createState() => _NaneseniePageState();
}

class _NaneseniePageState extends State<NaneseniePage> {
  @override
  Widget build(BuildContext context) {
    AppBarClass appBarClass=AppBarClass();
    DrawerClass drawerClass=DrawerClass();
    FloatingActianClass floatingActianClass=FloatingActianClass();
    return Scaffold(
      appBar: AppBar(
        title: appBarClass
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 15,),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey
                      ),
                      child: const Center(
                        child: Text("создать",style: TextStyle(fontSize: 18),),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: drawerClass,
      ),
      floatingActionButton: floatingActianClass,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
