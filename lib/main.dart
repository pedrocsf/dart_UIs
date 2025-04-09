import 'package:flutter/material.dart';
import 'dart:math';

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
    ;

    return num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Botão de menu
          Positioned(
            top: 54.0, // Coordenada vertical do botão
            left: 20.0, // Coordenada horizontal do botão
            child: Container(
              width: 48.0, // Largura do círculo
              height: 48.0, // Altura do círculo
              decoration: const BoxDecoration(
                color: Color(0xFFECEFF4), // Cor do círculo
                shape: BoxShape.circle, // Define o formato como círculo
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ), // Ícone com cor branca
                onPressed: () {
                  // Ação do botão
                },
              ),
            ),
          ),
          // Texto "DELIVER TO"
          Positioned(
            top: 59.0, // Coordenada vertical do texto
            left: 87.0, // Coordenada horizontal do texto
            child: const Text(
              'DELIVER TO',
              style: TextStyle(
                fontFamily: 'Sen',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF6E2A),
              ),
            ),
          ),
          // Texto "Halal Lab office"
          Positioned(
            top: 76.0, // Coordenada vertical do texto (abaixo do "DELIVER TO")
            left: 87.0, // Coordenada horizontal do texto
            child: const Text(
              'Halal Lab office',
              style: TextStyle(
                fontFamily: 'Sen',
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 65.0, // Coordenada vertical do botão
            left: 170.0,
            child: Container(
              // Coordenada horizontal do botão
              width: 2.0, // Largura do círculo
              height: 2.0, // Altura do círculo
              decoration: const BoxDecoration(
                color: Color(0xFFECEFF4), // Cor do círculo
                shape: BoxShape.circle, // Define o formato como círculo
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ), // Ícone com cor branca
                onPressed: () {
                  // Ação do botão
                },
              ),
            ),
          ),
          // Ícone de sacola de compras
          Positioned(
            top: 50.0, // Coordenada vertical do ícone
            left: 306.0, // Coordenada horizontal do ícone
            child: Stack(
              clipBehavior:
                  Clip.none, // Permite que o círculo pequeno fique fora dos limites do Stack
              children: [
                // Círculo de fundo com o ícone
                Container(
                  width: 48.0, // Largura do círculo
                  height: 48.0, // Altura do círculo
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 24, 28, 46), // Cor do círculo
                    shape: BoxShape.circle, // Define o formato como círculo
                  ),
                  child: const Icon(
                    Icons.shopping_bag,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                // Círculo pequeno na lateral direita superior
                Positioned(
                  top: -2.0, // Ajuste vertical para o círculo pequeno
                  right: -0, // Ajuste horizontal para o círculo pequeno
                  child: Container(
                    width: 25.0, // Largura do círculo pequeno
                    height: 25.0, // Altura do círculo pequeno
                    decoration: const BoxDecoration(
                      color: Colors.red, // Cor do círculo pequeno
                      shape: BoxShape.circle, // Define o formato como círculo
                    ),
                  ),
                ),
                Positioned(
                  top: -2.0, // Ajuste vertical para o círculo pequeno
                  right: 7.0, // Ajuste horizontal para o círculo pequeno
                  child: Text(
                    '${contadorDeItensDaSacola()}',
                    style: const TextStyle(
                      fontFamily: 'Sen',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ), // Texto dentro do círculo pequeno
                ),
              ],
            ),
          ),
          Positioned(
            top: 123.0, // Coordenada vertical do texto
            left: 24.0, // Coordenada horizontal do texto
            child: RichText(
              text: TextSpan(
                text: 'Hey Halal, ', // Parte normal
                style: const TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.normal, // Estilo normal
                ),
                children: [
                  TextSpan(
                    text: 'Good Afternoon!', // Parte em negrito
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, // Negrito
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 165.0, // Ajuste a coordenada vertical aqui
            left: 22.0, // Ajuste a coordenada horizontal aqui
            child: Container(
              width: 340.0, // Largura do campo de pesquisa
              height: 62.0, // Altura do campo de pesquisa
              decoration: BoxDecoration(
                color: const Color(0xFFECEFF4), // Cor de fundo
                borderRadius: BorderRadius.circular(
                  20.0,
                ), // Bordas arredondadas
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                  top: 8,
                  right: 20,
                ), // Ajuste de posição interno
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search dishes, restaurants',
                    hintStyle: const TextStyle(
                      fontFamily: 'Sen',
                      fontSize: 17,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 250.0, // Coordenada vertical do texto
            left: 24.0, // Coordenada horizontal do texto
            child: const Text(
              'All Categories',
              style: TextStyle(
                fontFamily: 'Sen',
                fontSize: 21,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Positioned(
            top: 258.0, // Coordenada vertical do texto
            left: 280.0, // Coordenada horizontal do texto
            child: const Text(
              'See All',
              style: TextStyle(
                fontFamily: 'Sen',
                fontSize: 17,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Positioned(
            top: 250.0, // Coordenada vertical do botão
            left: 325.0,
            child: Container(
              // Coordenada horizontal do botão
              width: 2.0, // Largura do círculo
              height: 2.0, // Altura do círculo
              decoration: const BoxDecoration(
                color: Color(0xFFECEFF4), // Cor do círculo
                shape: BoxShape.circle, // Define o formato como círculo
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.chevron_right,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ), // Ícone com cor branca
                onPressed: () {
                  // Ação do botão
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
