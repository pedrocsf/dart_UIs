import 'package:flutter/material.dart';
import 'dart:math';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:material_symbols_icons/iconname_to_unicode_map.dart';
import 'dart:convert';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:pokedex/fourthPage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  String horas() {
    DateTime agora = DateTime.now().toUtc();
    DateTime brasilia = agora.subtract(Duration(hours: 3));
    String hfinal = DateFormat('h:mm a').format(brasilia);

    return hfinal;
  }

  Future<String> sunset(double latitude, double longitude) async {
    final url = Uri.parse(
      'https://api.sunrise-sunset.org/json?lat=$latitude&lng=$longitude&formatted=0',
    );

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final sunsetUtc = DateTime.parse(data['results']['sunset']);

        final sunsetBrasilia = sunsetUtc.subtract(Duration(hours: 3));

        return DateFormat('h:mm a').format(sunsetBrasilia);
      } else {
        throw Exception('Erro ao buscar o horário do pôr do sol');
      }
    } catch (e) {
      return 'Erro: $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF245278B), Color(0xFF2E335A)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 32,
            left: 32,
            right: 32,
            bottom: 10,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Fourthpage()),
                  );
                },
                child: Container(
                  height: 110,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Color.fromARGB(240, 28, 10, 70),
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 7.0,
                          top: 5.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.ac_unit,
                              color: Color.fromARGB(255, 133, 131, 131),
                            ),
                            Gap(3),
                            Text(
                              'AIR QUALITY',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                color: const Color.fromARGB(255, 133, 131, 131),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 155.0,
                          top: 5.0,
                          bottom: 7.0,
                        ),

                        child: Text(
                          '3-Low Health Risk',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 290,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(240, 12, 47, 176),
                                  Color.fromARGB(255, 179, 12, 126),
                                ],
                                begin:
                                    Alignment.centerLeft, // Início do gradiente
                                end: Alignment.centerRight, // Fim do gradiente
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45.0),
                            child: Container(
                              height: 8,
                              width: 5,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(5),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'See more',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 14,
                              ),
                            ),
                            Gap(210),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 168, 165, 165),
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Gap(5),
              Row(
                children: [
                  Container(
                    height: 158,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color.fromARGB(240, 28, 10, 70),
                    ),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 7.0,
                            top: 15.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.sunny,
                                color: Color.fromARGB(255, 133, 131, 131),
                              ),
                              Gap(5),
                              Text(
                                'UV INDEX',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: const Color.fromARGB(
                                    255,
                                    133,
                                    131,
                                    131,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 115, top: 10.0),

                          child: Text(
                            '4',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 25,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Text(
                                'Moderate',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(10),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 135,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(240, 12, 47, 176),
                                    Color.fromARGB(255, 179, 12, 126),
                                  ],
                                  begin:
                                      Alignment
                                          .centerLeft, // Início do gradiente
                                  end:
                                      Alignment.centerRight, // Fim do gradiente
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Container(
                                height: 8,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(5),
                  Container(
                    height: 158,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color.fromARGB(240, 28, 10, 70),
                    ),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 7.0,
                            top: 15.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.wb_twighlight,
                                color: Color.fromARGB(255, 133, 131, 131),
                              ),
                              Gap(5),
                              Text(
                                'SUNRISE',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: const Color.fromARGB(
                                    255,
                                    133,
                                    131,
                                    131,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10.0),

                          child: Text(
                            horas().toString(),
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 10,
                            ),
                          ),
                        ),

                        //Gap(10),
                        Container(
                          height: 60,
                          width: 180,
                          color: Color(0xFF2D2366), // fundo roxo escuro
                          padding: EdgeInsets.all(16),
                          child: LineChart(
                            LineChartData(
                              backgroundColor: Colors.transparent,
                              gridData: FlGridData(show: false),
                              titlesData: FlTitlesData(show: false),
                              borderData: FlBorderData(show: false),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    FlSpot(0, 1),
                                    FlSpot(1, 3),
                                    FlSpot(2, 2),
                                  ],
                                  isCurved: true,
                                  barWidth: 3,
                                  color: Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ).withOpacity(0.9),
                                  dotData: FlDotData(
                                    show: true,
                                    checkToShowDot:
                                        (spot, barData) =>
                                            spot.x ==
                                            1, // só mostra o primeiro ponto
                                    getDotPainter: (
                                      spot,
                                      percent,
                                      barData,
                                      index,
                                    ) {
                                      return FlDotCirclePainter(
                                        radius: 5,
                                        color: Colors.white.withOpacity(0.9),
                                        strokeWidth: 0,
                                        strokeColor: Colors.transparent,
                                      );
                                    },
                                  ),
                                  belowBarData: BarAreaData(show: false),
                                ),
                              ],
                              minX: 0,
                              maxX: 2,
                              minY: 0,
                              maxY: 4,
                            ),
                          ),
                        ),

                        Gap(10),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Center(
                                child: FutureBuilder<String>(
                                  future: sunset(
                                    -16.6799,
                                    -49.255,
                                  ), // Latitude e longitude de Brasília
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return CircularProgressIndicator(); // Exibe um indicador de carregamento
                                    } else if (snapshot.hasError) {
                                      return Text('Erro: ${snapshot.error}');
                                    } else {
                                      return Text(
                                        'Sunset ${snapshot.data}',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(5),
              Row(
                children: [
                  Container(
                    height: 158,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color.fromARGB(240, 28, 10, 70),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 7.0,
                            top: 15.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.air,
                                color: Color.fromARGB(255, 133, 131, 131),
                              ),
                              Gap(5),
                              Text(
                                'WIND',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: const Color.fromARGB(
                                    255,
                                    133,
                                    131,
                                    131,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20,
                              ),
                              child: Image.asset(
                                'lib/assets/compass.png',
                                height: 115,
                                width: 115,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 45.0),
                                child: Text(
                                  '9.7km/h',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(5),
                  Container(
                    height: 158,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color.fromARGB(240, 28, 10, 70),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 7.0,
                            top: 15.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.water_drop,
                                color: Color.fromARGB(255, 133, 131, 131),
                              ),
                              Gap(5),
                              Text(
                                'RAINFALL',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: const Color.fromARGB(
                                    255,
                                    133,
                                    131,
                                    131,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  '1.8 mm',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 0.0,
                                  left: 20,
                                ),
                                child: Text(
                                  'in last hour',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Gap(10),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 0.0,
                                  left: 20,
                                ),
                                child: Text(
                                  '1.2 mm expected in next 24h.',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(5),
              Row(
                children: [
                  Container(
                    height: 158,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color.fromARGB(240, 28, 10, 70),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 7.0,
                            top: 15.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.thermostat,
                                color: Color.fromARGB(255, 133, 131, 131),
                              ),
                              Gap(5),
                              Text(
                                'FEELS LIKE',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: const Color.fromARGB(
                                    255,
                                    133,
                                    131,
                                    131,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(10),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  '19º',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 35,
                                  ),
                                ),
                              ),
                            ),

                            Gap(10),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 0.0,
                                  left: 20,
                                ),
                                child: Text(
                                  'Similar to the actual temperature.',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(5),
                  Container(
                    height: 158,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color.fromARGB(240, 28, 10, 70),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 7.0,
                            top: 15.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.foggy,
                                color: Color.fromARGB(255, 133, 131, 131),
                              ),
                              Gap(5),
                              Text(
                                'HUMIDITY',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: const Color.fromARGB(
                                    255,
                                    133,
                                    131,
                                    131,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(10),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  '90%',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 35,
                                  ),
                                ),
                              ),
                            ),

                            Gap(10),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 0.0,
                                  left: 20,
                                ),
                                child: Text(
                                  'The dew point is 17 right now.',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(5),
              Row(
                children: [
                  Container(
                    height: 158,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color.fromARGB(240, 28, 10, 70),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 7.0,
                            top: 15.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.visibility,
                                color: Color.fromARGB(255, 133, 131, 131),
                              ),
                              Gap(5),
                              Text(
                                'VISIBILITY',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: const Color.fromARGB(
                                    255,
                                    133,
                                    131,
                                    131,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Gap(10),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  '8 km',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 35,
                                  ),
                                ),
                              ),
                            ),

                            Gap(10),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 0.0,
                                  left: 20,
                                ),
                                child: Text(
                                  'Similar to the actual temperature.',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255,
                                    ),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(5),
                  Container(
                    height: 158,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color.fromARGB(240, 28, 10, 70),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 7.0,
                            top: 15.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.compress_rounded,
                                color: Color.fromARGB(255, 133, 131, 131),
                              ),
                              Gap(5),
                              Text(
                                'PRESSURE',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: const Color.fromARGB(
                                    255,
                                    133,
                                    131,
                                    131,
                                  ),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'lib/assets/pressure.png',
                          height: 115,
                          width: 115,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
