import 'package:flutter/material.dart';
import 'dart:math';
import 'package:gap/gap.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pokedex/thirdPage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  Widget itens(String imagePath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 153,
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            imagePath,
            width: 150,
            height: 153,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 54, left: 24, right: 24),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //Botão de menu
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFECF0F4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.menu),
                  ),
                  SizedBox(width: 20),
                  //Texto 1 (laranja) e Texto 2 (preto)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'LOCATION',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Sen',
                          color: Color(0xFFFC6E2A),
                        ),
                      ),
                      Text(
                        'Halal Lab office',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Sen',

                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),

                  Icon(Icons.arrow_drop_down),
                  Spacer(),
                  SizedBox(
                    width: 45,
                    height: 40,
                    child: Stack(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ThirdPage(),
                                ),
                              );
                            },

                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(24),
              Row(
                children: [
                  Container(
                    width: 156.96,
                    height: 115.1,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F8F9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              style: TextStyle(
                                fontFamily: 'Sen',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              '20',
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              style: TextStyle(
                                color: Color(0xFF838799),
                                fontFamily: 'Sen',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              'Running Orders',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 156.96,
                    height: 115.1,
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F8F9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              style: TextStyle(
                                fontFamily: 'Sen',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                              '05',
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              style: TextStyle(
                                color: Color(0xFF838799),
                                fontFamily: 'Sen',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              'Order Request',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(16.9),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Total Revenue',
                            style: TextStyle(fontFamily: 'Sen', fontSize: 14),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '\$2,241',
                            style: TextStyle(
                              fontFamily: 'Sen',
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(18),
                  SizedBox(
                    width: 62,
                    height: 43,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 62,
                        height: 26,
                        decoration: BoxDecoration(
                          color: Color(0xFFE8EAED), // Cor de fundo do container
                          borderRadius: BorderRadius.circular(
                            5,
                          ), // Define o raio das bordas
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  style: TextStyle(
                                    fontFamily: 'Sen',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF9C9BA6),
                                  ),
                                  'Daily',
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Gap(55),
                  SizedBox(
                    width: 73,
                    height: 73,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'See Details',
                            style: TextStyle(
                              fontFamily: 'Sen',
                              fontSize: 14,
                              color: Color(0xFFFB6D3A),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFFFB6D3A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Gap(18),
              Center(
                child: Container(
                  height: 140,
                  //margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LineChart(
                      LineChartData(
                        gridData: FlGridData(show: false),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 20,
                              getTitlesWidget: (value, meta) {
                                switch (value.toInt()) {
                                  case 0:
                                    return Text('10AM');
                                  case 1:
                                    return Text('11AM');
                                  case 2:
                                    return Text('12PM');
                                  case 3:
                                    return Text('01PM');
                                  case 4:
                                    return Text('02PM');
                                  case 5:
                                    return Text('03PM');
                                  case 6:
                                    return Text('04PM');
                                }
                                return Text('');
                              },
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        borderData: FlBorderData(show: false),
                        minX: 0,
                        maxX: 6,
                        minY: 0,
                        maxY: 6,
                        lineBarsData: [
                          LineChartBarData(
                            isCurved: true,
                            color: Colors.orange,
                            barWidth: 3,
                            dotData: FlDotData(show: true),
                            belowBarData: BarAreaData(
                              show: true,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange.withOpacity(0.3),
                                  Colors.orange.withOpacity(0.0),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            spots: [
                              FlSpot(0, 1),
                              FlSpot(1, 1.5),
                              FlSpot(2, 3),
                              FlSpot(3, 2.5),
                              FlSpot(4, 4),
                              FlSpot(5, 3.5),
                              FlSpot(6, 5),
                            ],
                          ),
                        ],
                        lineTouchData: LineTouchData(
                          touchTooltipData: LineTouchTooltipData(
                            tooltipBgColor: Colors.black,
                            getTooltipItems: (List<LineBarSpot> touchedSpots) {
                              return touchedSpots.map((spot) {
                                return LineTooltipItem(
                                  '\$${(spot.y * 100).toInt()}',
                                  const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              }).toList();
                            },
                          ),
                          touchCallback:
                              (
                                FlTouchEvent event,
                                LineTouchResponse? response,
                              ) {},
                          handleBuiltInTouches: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  top: 20,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Reviews',
                                    style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              ),
                              Gap(135),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    'See All Reviews',
                                    style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontSize: 14,
                                      color: Color(0xFFFB6D3A),
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xFFFB6D3A),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Gap(20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  top: 10,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Icon(
                                    Icons.star,
                                    color: Color(0xFFFB6D3A),
                                    size: 26,
                                  ),
                                ),
                              ),
                              Gap(7),
                              Text(
                                '4.9',
                                style: TextStyle(
                                  fontFamily: 'Sen',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFB6D3A),
                                ),
                              ),
                              Gap(11),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 12,
                                  bottom: 5,
                                ),
                                child: Text(
                                  'Total 20 Reviews',
                                  style: TextStyle(
                                    fontFamily: 'Sen',
                                    fontSize: 17,

                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Gap(0),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 327,
                height: 190,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 14),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Popular Items This Weeks',
                              style: TextStyle(
                                fontFamily: 'Sen',
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                        ),

                        Gap(80),
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontFamily: 'Sen',
                                fontSize: 14,
                                color: Color(0xFFFB6D3A),
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFFFB6D3A),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Gap(10),

                    SizedBox(
                      height: 146,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 0, bottom: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            itens('lib/assets/restaurante.jpeg'),
                            itens('lib/assets/restaurante.jpeg'),
                            itens('lib/assets/restaurante.jpeg'),
                            itens('lib/assets/restaurante.jpeg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
