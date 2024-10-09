import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../class/app_bar_class.dart';
import '../../class/drover_class.dart';
import '../../class/floating_actian_class.dart';
import '../nastroyka_page.dart';


class SpravochnicPage extends StatefulWidget {
  static const String id = "sprovochnik_page";

  const SpravochnicPage({super.key});

  @override
  State<SpravochnicPage> createState() => _SpravochnicPageState();
}

class _SpravochnicPageState extends State<SpravochnicPage> {
  @override
  Widget build(BuildContext context) {
    AppBarClass appBarClass=AppBarClass();
    DrawerClass drawerClass=DrawerClass();
    FloatingActianClass floatingActianClass=FloatingActianClass();
    return Scaffold(
      appBar: AppBar(
        title: appBarClass
      ),
      drawer: Drawer(
        child: drawerClass
      ),
      floatingActionButton: floatingActianClass,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
