import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/class/app_bar_class.dart';
import 'package:untitled5/class/drover_class.dart';
import 'package:untitled5/pages/spravochnik_pages/nomeklatura_pages/tab_bar_page/nayti_pages.dart';
import 'package:untitled5/pages/spravochnik_pages/nomeklatura_pages/tab_bar_page/sozdat.dart';
import 'package:untitled5/pages/spravochnik_pages/nomeklatura_pages/tab_bar_page/sozdat_grupu.dart';
import 'package:untitled5/pages/spravochnik_pages/nomeklatura_pages/tab_bar_page/zagruzit_fayl.dart';

import '../../../class/floating_actian_class.dart';

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
   Color textColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.black
        : Colors.white;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: appBarClass,
          bottom:  TabBar(
            dividerColor: textColor,
            tabAlignment: TabAlignment.start,
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            isScrollable: true,
            labelColor: Colors.deepPurple,
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Container(
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey
                ),
                child: const Tab(
                  text: "создать",
                ),
              ),
              Container(
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey
                ),
                child: const Tab(
                  text: "загрузить файл",
                ),
              ),
              Container(
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey
                ),
                child: const Tab(
                  text: "создать группу",
                ),
              ),
              Container(
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey
                ),
                child: const Tab(
                  text: "найти",
                ),
              ),

            ],
          ),

        ),
        body: const TabBarView(
          children: [
            SozdatPage(),
            ZagruzitPage(),
            SozdatGrupuPage(),
            NaytiPage(),
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
