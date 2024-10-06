import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../class/app_bar_class.dart';
import '../class/drover_class.dart';
import '../class/floating_actian_class.dart';
import 'nastroyka_page.dart';

class PrimerkaPage extends StatefulWidget {
  static const String id = "primerka_page";

  const PrimerkaPage({super.key});

  @override
  State<PrimerkaPage> createState() => _PrimerkaPageState();
}

class _PrimerkaPageState extends State<PrimerkaPage> {
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
