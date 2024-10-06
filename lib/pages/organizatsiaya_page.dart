import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/class/app_bar_class.dart';
import 'package:untitled5/class/drover_class.dart';

import '../class/floating_actian_class.dart';

class OrganizatsiyaPage extends StatefulWidget {
  static const String id = "namekla_page";

  const OrganizatsiyaPage({super.key});

  @override
  State<OrganizatsiyaPage> createState() => _OrganizatsiyaPageState();
}

class _OrganizatsiyaPageState extends State<OrganizatsiyaPage> {
  AppBarClass appBarClass = AppBarClass();
  DrawerClass drawerClass =  DrawerClass();
  FloatingActianClass floatingActianClass=FloatingActianClass();

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: appBarClass,
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                child: Row(
                  children: [
                    Container(
                      height: screenHeight*0.05,
                      width: screenWidth*0.11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      child:  Center(
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.add,))
                      ),
                    ),
                    SizedBox(
                      width: screenWidth*0.02,
                    ),
                    Container(
                        height: screenHeight*0.05,
                        width: screenWidth*0.11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      child:  Center(
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.file_copy,color: Colors.green,))
                      ),
                    ),
                    SizedBox(width: screenWidth*0.2,),
                    Container(
                      height: 50,
                      width: screenWidth*0.5,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Search"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
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
