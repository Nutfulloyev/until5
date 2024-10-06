import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/class/drover_class.dart';
import '../class/app_bar_class.dart';
import '../class/floating_actian_class.dart';
import 'nastroyka_page.dart';

class DocumentPage extends StatefulWidget {
  static const String id = "DocumentPage";

  const DocumentPage({super.key});

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
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
        child: drawerClass,
      ),
      floatingActionButton: floatingActianClass,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
