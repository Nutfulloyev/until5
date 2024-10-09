import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled5/pages/agregatsiya-page.dart';
import 'package:untitled5/pages/dacument_page.dart';
import 'package:untitled5/pages/spravochnik_pages/gismit_page.dart';
import 'package:untitled5/pages/home_page.dart';
import 'package:untitled5/pages/spravochnik_pages/kontragent_page.dart';
import 'package:untitled5/pages/nanisenya_page.dart';
import 'package:untitled5/pages/nastroyka_page.dart';
import 'package:untitled5/pages/spravochnik_pages/nomeklatura_pages/nomenklatura_page.dart';
import 'package:untitled5/pages/spravochnik_pages/organizatsiaya_page.dart';
import 'package:untitled5/pages/otgruzka_page.dart';
import 'package:untitled5/pages/scan_page.dart';
import 'package:untitled5/pages/sing_in_page.dart';
import 'package:untitled5/pages/sing_up_page.dart';
import 'package:untitled5/pages/spisani_page.dart';
import 'package:untitled5/pages/spravochnik_pages/spravochnik_page.dart';
import 'package:untitled5/pages/zakas_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isDarkMode = prefs.getBool('isDarkMode') ?? false;
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    });
  }

  void _toggleTheme(bool isDarkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode);
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.black, // Drawer dark mode uchun qora
        ),
      ),
      themeMode: _themeMode,
      home: const SingUpPage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        NastroykePage.id: (context) =>
            NastroykePage(onThemeChanged: _toggleTheme),
        DocumentPage.id: (context) => const DocumentPage(),
        SpravochnicPage.id: (context) => const SpravochnicPage(),
        ZakasPage.id: (context) => const ZakasPage(),
        NaneseniePage.id: (context) => const NaneseniePage(),
        ArganizarsiyaPage.id: (context) => const ArganizarsiyaPage(),
        OtgruzkaPage.id: (context) => const OtgruzkaPage(),
        SpisaniePage.id: (context) => const SpisaniePage(),
        SingUpPage.id: (context) => const SingUpPage(),
        SignInPage.id: (context) => const SignInPage(),
        NameklaturaPage.id: (context) => const NameklaturaPage(),
        OrganizatsiyaPage.id: (context) => const OrganizatsiyaPage(),
        GismitPage.id: (context) => const GismitPage(),
        KontragentPage.id: (context) => const KontragentPage(),
        ScanPage.id: (context)=> ScanPage(),
      },
    );
  }
}
