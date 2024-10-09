import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/class/app_bar_class.dart';
import 'package:untitled5/class/drover_class.dart';

import '../../class/floating_actian_class.dart';

class KontragentPage extends StatefulWidget {
  static const String id = "kontragent_page";

  const KontragentPage({super.key});

  @override
  State<KontragentPage> createState() => _KontragentPageState();
}

class _KontragentPageState extends State<KontragentPage> {
  AppBarClass appBarClass = AppBarClass();
  DrawerClass drawerClass =  DrawerClass();
  FloatingActianClass floatingActianClass=FloatingActianClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarClass,
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
