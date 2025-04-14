import 'package:flutter/material.dart';
import 'dart:math';
import 'package:gap/gap.dart';
import 'package:pokedex/secondPage.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String contadorDeItensDaSacola() {
    String num;
    int number = Random().nextInt(9);
    if (number > 9) {
      num = '+9';
    } else {
      num = number.toString();
    }

    return num;
  }

  Widget itens(String texto, String imagePath) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 210, 124, 1),
          borderRadius: BorderRadius.circular(39),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipOval(
              child: Image.asset(
                imagePath,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Text(
              texto,
              style: TextStyle(
                color: Color.fromRGBO(50, 52, 62, 1),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget restaurantes(String texto, String imagePath, String texto2) {
    return Column(
      children: [
        // Imagem com GestureDetector
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                7,
              ), // Define o raio das bordas
              child: Image.asset(
                imagePath,
                width: 327,
                height: 137, // Ajuste o tamanho conforme necessário
                fit: BoxFit.cover, // Para ajustar a imagem ao tamanho da caixa
              ),
            ),
          ),
        ),
        // Textos
        Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  texto,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(24, 28, 46, 1),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  texto2,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFFA0A5BA),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Informações adicionais (Estrelas, Entrega, Tempo)
        Row(
          children: [
            // Avaliação
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.star_border_rounded,
                  color: Color.fromRGBO(255, 118, 34, 1),
                ),
                SizedBox(width: 3),
                Text(
                  '4.7',
                  style: TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(24, 28, 46, 1),
                  ),
                ),
              ],
            ),
            SizedBox(width: 24),
            // Entrega
            Row(
              children: const [
                Icon(
                  Icons.local_shipping_outlined,
                  color: Color.fromRGBO(255, 118, 34, 1),
                ),
                SizedBox(width: 9),
                Text(
                  'Free',
                  style: TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(24, 28, 46, 1),
                  ),
                ),
              ],
            ),
            SizedBox(width: 24),
            // Tempo de entrega
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.schedule, color: Color.fromRGBO(255, 118, 34, 1)),
                SizedBox(width: 4),
                Text(
                  '20 min',
                  style: TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(24, 28, 46, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
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
                        'DELIVER TO',
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
                  //Icon da seta para baixo
                  Icon(Icons.arrow_drop_down),
                  Spacer(),
                  //Icon de loja e circulo de fundo
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
                          child: Icon(
                            Icons.local_mall,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        //Fundo do contador de itens na sacola
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF7622),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //Contador de itens na sacola
                            child: Center(
                              child: Text(
                                contadorDeItensDaSacola(),
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Sen',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Frase de boas vindas
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Hey Halal,  ',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextSpan(
                        text: 'Good Afternoon!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sen",
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Search bar
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 246, 246),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    hintText: 'Search dishes, restaurants',
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Sen',
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              //Frase pos search bar
              Gap(32),
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Text(
                      "All categories",
                      style: TextStyle(fontFamily: 'Sen', fontSize: 20),
                    ),
                    Gap(132),
                    Text(
                      "See all",
                      style: TextStyle(fontFamily: "Sen", fontSize: 16),
                    ),
                    Gap(10),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
              Gap(20),

              //Carrosel de categorias
              SizedBox(
                height: 103,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      itens('All', 'lib/assets/icon all.png'),
                      itens('Hot Dog', 'lib/assets/icone hot dog.png'),
                      itens('Burguer', 'lib/assets/icone burguer.png'),
                      itens(
                        'Fried Chicken',
                        'lib/assets/icone Fried Chicken.png',
                      ),
                    ],
                  ),
                ),
              ),
              Gap(32),
              //Texto pos carrosel
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Text(
                      "Open Restaurants",
                      style: TextStyle(fontFamily: 'Sen', fontSize: 20),
                    ),
                    Gap(96),
                    Text(
                      "See all",
                      style: TextStyle(fontFamily: "Sen", fontSize: 16),
                    ),
                    Gap(10),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),

              //Lista de restaurantes
              SizedBox(
                height: 338,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.only(top: 0),
                  child: Column(
                    //ainAxisSize: MainAxisSize.min,
                    children: [
                      restaurantes(
                        'Rose Garden Restaurant',
                        'lib/assets/restaurante.jpeg',
                        'Burger - Chiken - Riche - Wings ',
                      ),
                      restaurantes(
                        'Rose Garden Restaurant',
                        'lib/assets/restaurante.jpeg',
                        'Burger - Chiken - Riche - Wings ',
                      ),
                      restaurantes(
                        'Rose Garden Restaurant',
                        'lib/assets/restaurante.jpeg',
                        'Burger - Chiken - Riche - Wings ',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
