import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:untitled5/class/app_bar_class.dart';
import 'package:untitled5/class/drover_class.dart';
import 'package:untitled5/class/floating_actian_class.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
    AppBarClass appBarClass=AppBarClass();
    DrawerClass drawerClass=DrawerClass();
    FloatingActianClass floatingActianClass=FloatingActianClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarClass
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 200,
                  width: 1240,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 30),
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey),
                                      child: Center(
                                        child: SizedBox(
                                          height: 45,
                                          width: 45,
                                          child: SvgPicture.asset(
                                              "assets/images/camera.svg"),
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 80),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Today's Money",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 50),
                                          child: Text(
                                            "\$53K",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Container(
                                height: 2,
                                width: 300,
                                color: Colors.grey,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 13, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "+55%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.green),
                                  ),
                                  Text(
                                    " then last week",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 30),
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey),
                                      child: Center(
                                        child: SizedBox(
                                          height: 45,
                                          width: 45,
                                          child: SvgPicture.asset(
                                              "assets/images/person.svg"),
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 80),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Today's Users",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 50),
                                          child: Text(
                                            "2300",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Container(
                                height: 2,
                                width: 300,
                                color: Colors.grey,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 13, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "+3%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.green),
                                  ),
                                  Text(
                                    " then last month",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 30),
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey),
                                      child: Center(
                                        child: SizedBox(
                                          height: 45,
                                          width: 45,
                                          child: SvgPicture.asset(
                                              "assets/images/persons.svg"),
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 90),
                                    child: Column(
                                      children: [
                                        Text(
                                          "New Clients",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 30),
                                          child: Text(
                                            "3,462",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Container(
                                height: 2,
                                width: 300,
                                color: Colors.grey,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 13, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "-2%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.red),
                                  ),
                                  Text(
                                    " then yesterday",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 30),
                              child: Row(
                                children: [
                                  Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey),
                                      child: Center(
                                        child: SizedBox(
                                          height: 45,
                                          width: 45,
                                          child: SvgPicture.asset(
                                              "assets/images/diogramma.svg"),
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 90),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 35),
                                          child: Text(
                                            "Sales",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          "\$103,430",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Container(
                                height: 2,
                                width: 300,
                                color: Colors.grey,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 13, left: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "+5%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.red),
                                  ),
                                  Text(
                                    " then yesterday",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 340,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10),
                      child: Container(
                          height: 200,
                          width: double.infinity,
                          child: SfCartesianChart(
                              primaryXAxis: const CategoryAxis(),
                              tooltipBehavior: TooltipBehavior(enable: true),
                              series: <CartesianSeries<_SalesData, String>>[
                                LineSeries<_SalesData, String>(
                                    dataSource: data,
                                    xValueMapper: (_SalesData sales, _) =>
                                    sales.year,
                                    yValueMapper: (_SalesData sales, _) =>
                                    sales.sales,
                                    dataLabelSettings: const DataLabelSettings(
                                        isVisible: true))
                              ])
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Daily Sales",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("15% increase in today sales",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 53,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 22),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.access_time_filled),
                            Text("  campaign sent 2 days ago",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 340,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        child: SfCartesianChart(
                            primaryXAxis: const CategoryAxis(),
                            tooltipBehavior: TooltipBehavior(enable: true),
                            series: <CartesianSeries<_SalesData, String>>[
                              LineSeries<_SalesData, String>(
                                  dataSource: data,
                                  xValueMapper: (_SalesData sales, _) =>
                                  sales.year,
                                  yValueMapper: (_SalesData sales, _) =>
                                  sales.sales,
                                  dataLabelSettings: const DataLabelSettings(
                                      isVisible: true))
                            ])
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Daily Sales",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("15% increase in today sales",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 53,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 22),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.access_time_filled),
                            Text("  campaign sent 2 days ago",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 340,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10),
                      child: Container(
                          height: 200,
                          width: double.infinity,
                          child: SfCartesianChart(
                              primaryXAxis: const CategoryAxis(),
                              tooltipBehavior: TooltipBehavior(enable: true),
                              series: <CartesianSeries<_SalesData, String>>[
                                LineSeries<_SalesData, String>(
                                    dataSource: data,
                                    xValueMapper: (_SalesData sales, _) =>
                                    sales.year,
                                    yValueMapper: (_SalesData sales, _) =>
                                    sales.sales,
                                    dataLabelSettings: const DataLabelSettings(
                                        isVisible: true))
                              ])
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20,bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Daily Sales",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("15% increase in today sales",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 53,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 22),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.access_time_filled),
                            Text("  campaign sent 2 days ago",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 400,
              width: double.infinity,
              child: const Image(
                image: AssetImage("assets/images/img2.png"),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: drawerClass
      ),
      floatingActionButton: floatingActianClass,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
