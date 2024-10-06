import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/class/app_bar_class.dart';
import 'package:untitled5/class/drover_class.dart';

import '../class/floating_actian_class.dart';

class NameklaturaPage extends StatefulWidget {
  static const String id = "nameklatura_page";

  const NameklaturaPage({super.key});

  @override
  State<NameklaturaPage> createState() => _NameklaturaPageState();
}

class _NameklaturaPageState extends State<NameklaturaPage> {
  AppBarClass appBarClass = AppBarClass();
  DrawerClass drawerClass =  DrawerClass();
  FloatingActianClass floatingActianClass=FloatingActianClass();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
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
                text: "файл",
              ),
              Tab(
                text: "создать",
              ),
              Tab(
                text: "загрузить файл",
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
