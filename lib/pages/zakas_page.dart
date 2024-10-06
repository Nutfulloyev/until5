import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/class/app_bar_class.dart';
import 'package:untitled5/class/drover_class.dart';

import '../class/floating_actian_class.dart';

class ZakasPage extends StatefulWidget {
  static const String id = "zakas_page";

  const ZakasPage({super.key});

  @override
  State<ZakasPage> createState() => _ZakasPageState();
}

class _ZakasPageState extends State<ZakasPage> {
  AppBarClass appBarClass = AppBarClass();
  DrawerClass drawerClass =  DrawerClass();
  FloatingActianClass floatingActianClass=FloatingActianClass();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: appBarClass,
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            isScrollable: true,
            labelColor: Colors.deepPurple,
            indicatorColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                text: "создать",
              ),
              Tab(
                text: "загрузить",
              ),
              Tab(
                text: "скачать",
              ),
              Tab(
                text: "создать группу",
              ),
              Tab(
                text: "найти",
              ),

            ],
          ),

        ),
        body: TabBarView(
          children: [
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        drawer: Drawer(
          child: drawerClass,
        ),
        floatingActionButton: floatingActianClass,
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      ),
    );

  }
}
