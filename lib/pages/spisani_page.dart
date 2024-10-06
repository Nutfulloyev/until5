import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../class/app_bar_class.dart';
import '../class/drover_class.dart';
import '../class/floating_actian_class.dart';
import 'nastroyka_page.dart';

class SpisaniePage extends StatefulWidget {
  static const String id = "spisanie_page";

  const SpisaniePage({super.key});

  @override
  State<SpisaniePage> createState() => _SpisaniePageState();
}

class _SpisaniePageState extends State<SpisaniePage> {
  @override
  Widget build(BuildContext context) {
    AppBarClass appBarClass = AppBarClass();
    DrawerClass drawerClass = DrawerClass();
    FloatingActianClass floatingActianClass=FloatingActianClass();
    return Scaffold(
      appBar: AppBar(
        title: appBarClass,
      ),
      drawer: Drawer(
        child: drawerClass,
      ),
      floatingActionButton: floatingActianClass,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
