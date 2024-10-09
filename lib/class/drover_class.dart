import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/pages/spravochnik_pages/gismit_page.dart';
import 'package:untitled5/pages/spravochnik_pages/kontragent_page.dart';
import 'package:untitled5/pages/spravochnik_pages/nomeklatura_pages/nomenklatura_page.dart';
import 'package:untitled5/pages/spravochnik_pages/organizatsiaya_page.dart';
import '../pages/agregatsiya-page.dart';
import '../pages/dacument_page.dart';
import '../pages/home_page.dart';
import '../pages/nanisenya_page.dart';
import '../pages/nastroyka_page.dart';
import '../pages/otgruzka_page.dart';
import '../pages/sing_up_page.dart';
import '../pages/spisani_page.dart';
import '../pages/zakas_page.dart';

class DrawerClass extends StatefulWidget {
  const DrawerClass({super.key});

  @override
  State<DrawerClass> createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Column(
          children: [
            Container(
              height: 120,
              width: double.infinity,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Text(
                    "Material Tailwind React",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
              },
              child: SingleChildScrollView(
                  child: ExpansionPanelList(
                    elevation: 0,
                    expandedHeaderPadding: const EdgeInsets.all(8),
                    animationDuration: const Duration(milliseconds: 500),
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    children: [
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return const ListTile(
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.book),
                                  Text("  справочник",style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18))
                                ],
                              )
                          );
                        },
                        body: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(context, NameklaturaPage.id);
                                },
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 10, right: 10, left: 15),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.menu,size: 25,),
                                        Text(
                                          "  номенклатура",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(context, OrganizatsiyaPage.id);
                                },
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 10, right: 10, left: 15),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.maps_home_work_rounded,size: 25,),
                                        Text(
                                          "  организация",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(context, GismitPage.id);
                                },
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 10, right: 10, left: 15),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.person_add_sharp,size: 25,),
                                        Text(
                                          "  контуры гисмит",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(context, KontragentPage.id);
                                },
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 10, right: 10, left: 15),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.monetization_on,size: 25,),
                                        Text(
                                          "  контрагены",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        isExpanded: _isExpanded,
                      ),
                    ],
                  )
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, HomePage.id);
              },
              child: Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.home,size: 25,),
                      Text(
                        "  главная",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, DocumentPage.id);
              },
              child: Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.note_alt_outlined,size: 25,),
                      Text(
                        "  документ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, ZakasPage.id);
              },
              child: Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.library_books,size: 25,),
                      Text(
                        "  Закас",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, NaneseniePage.id);
              },
              child: Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.signal_cellular_connected_no_internet_0_bar,size: 25,),
                      Text(
                        "  нанисения",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, ArganizarsiyaPage.id);
              },
              child: Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.arrow_downward,size: 25,),
                      Text(
                        "  агрегация",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, OtgruzkaPage.id);
              },
              child: Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.fire_truck_rounded,size: 25,),
                      Text(
                        "  отгрузка",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, SpisaniePage.id);
              },
              child: Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.cloud,size: 25,),
                      Text(
                        "  списание",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, NastroykePage.id);
              },
              child: Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), ),
                  child: const Row(
                    children: [
                      Icon(Icons.settings,size: 25,),
                      Text(
                        "  настройка",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, SingUpPage.id);
              },
              child: Padding(
                padding:
                const EdgeInsets.only(top: 10, right: 10, left: 15),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.logout_rounded,size: 25,),
                      Text(
                        "Logout",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
