import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Fourthpage extends StatefulWidget {
  const Fourthpage({super.key});

  @override
  _FourthpageState createState() => _FourthpageState();
}

class _FourthpageState extends State<Fourthpage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget itens(String texto, String imagePath) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          height: 40,
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 233, 232, 232),
            borderRadius: BorderRadius.circular(39),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: Image.asset(
                  imagePath,
                  width: 30,
                  height: 30,
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

    Widget itens2(String texto, String texto2, String imagePath) {
      return GestureDetector(
        onTap: () {},
        child: Row(
          children: [
            //Gap(5),
            Container(
              height: 100,
              width: 75,
              decoration: BoxDecoration(
                color: Color.fromARGB(0, 157, 33, 33),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  //SizedBox(height: 10),
                  Image.asset(
                    imagePath,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  //SizedBox(width: 5),
                  Text(
                    texto,
                    style: TextStyle(
                      color: Color.fromRGBO(50, 52, 62, 1),
                      fontSize: 10,
                    ),
                  ),

                  Text(
                    texto2,
                    style: TextStyle(
                      color: Color.fromRGBO(50, 52, 62, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          //Search bar
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'lib/assets/shopee_wallpaper.png',
                height: 260,
                fit: BoxFit.cover,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 54,
                      left: 24,
                      right: 24,
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          hintText: 'Search for stores',
                          hintStyle: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Sen',
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 54, left: 0, right: 18),
                    child: SizedBox(
                      width: 45,
                      height: 40,
                      child: Stack(
                        children: [
                          Container(
                            width: 40,
                            height: 300,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 226, 226),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.notifications,
                              color: const Color.fromARGB(255, 0, 0, 0),
                              size: 23,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0, top: 7),
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xFFFF7622),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Stack(
              children: [
                Container(
                  width: 344,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 233, 232, 232),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: Color.fromARGB(255, 255, 85, 0),
                        size: 30,
                      ),
                      Gap(15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Sen',
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            'Lifetime earnings',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Sen',
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                      Gap(85),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Text(
                              '\$89.34',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Sen',
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
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
          ),
          Gap(20),
          SizedBox(
            height: 70,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  itens('Plus', 'lib/assets/all.png'),
                  itens('Travel', 'lib/assets/world.png'),
                  itens('Payments', 'lib/assets/money.png'),
                  itens('Voucher', 'lib/assets/voucher.png'),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24, top: 20),
            child: Row(
              children: [
                Text(
                  'Best Deals ',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Icon(
                  Icons.local_fire_department,
                  color: Color.fromARGB(255, 255, 85, 0),
                ),
                Spacer(),
                Text(
                  'See More',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Sen',

                    color: Color.fromARGB(255, 10, 122, 191),
                  ),
                ),
              ],
            ),
          ),
          Gap(10),
          SizedBox(
            height: 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  itens2(
                    'Shopee Off..',
                    'Up to 35%',
                    'lib/assets/shopee_icon.png',
                  ),
                  itens2('Mytheresa', 'Up to 9%', 'lib/assets/shopee_icon.png'),
                  itens2('Surfshark', '60%', 'lib/assets/shopee_icon.png'),
                  itens2('Amazon SG', 'Up to 9%', 'lib/assets/shopee_icon.png'),
                  itens2(
                    'Pag Bank',
                    'Up to 12.6%',
                    'lib/assets/shopee_icon.png',
                  ),
                  itens2(
                    'Shopee Off..',
                    'Up to 35%',
                    'lib/assets/shopee_icon.png',
                  ),
                  itens2('Mytheresa', 'Up to 9%', 'lib/assets/shopee_icon.png'),
                  itens2('Surfshark', '60%', 'lib/assets/shopee_icon.png'),
                  itens2('Amazon SG', 'Up to 9%', 'lib/assets/shopee_icon.png'),
                  itens2(
                    'Pag Bank',
                    'Up to 12.6%',
                    'lib/assets/shopee_icon.png',
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  itens2(
                    'Shopee Off..',
                    'Up to 35%',
                    'lib/assets/shopee_icon.png',
                  ),
                  itens2('Mytheresa', 'Up to 9%', 'lib/assets/shopee_icon.png'),
                  itens2('Surfshark', '60%', 'lib/assets/shopee_icon.png'),
                  itens2('Amazon SG', 'Up to 9%', 'lib/assets/shopee_icon.png'),
                  itens2('Pag Bank', '12.6%', 'lib/assets/shopee_icon.png'),
                  itens2(
                    'Shopee Off..',
                    'Up to 35%',
                    'lib/assets/shopee_icon.png',
                  ),
                  itens2('Mytheresa', 'Up to 9%', 'lib/assets/shopee_icon.png'),
                  itens2('Surfshark', '60%', 'lib/assets/shopee_icon.png'),
                  itens2('Amazon SG', 'Up to 9%', 'lib/assets/shopee_icon.png'),
                  itens2(
                    'Pag Bank',
                    'Up to 12.6%',
                    'lib/assets/shopee_icon.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  if (_selectedIndex == 0)
                    Positioned(
                      top: 0,
                      child: Container(
                        width: 50,
                        height: 3,
                        color: Colors.black, // Barra preta
                      ),
                    ),
                  Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
                ],
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  if (_selectedIndex == 1)
                    Positioned(
                      top: 0,
                      child: Container(
                        width: 50,
                        height: 3,
                        color: Colors.black, // Barra preta
                      ),
                    ),
                  SvgPicture.asset(
                    'lib/assets/trophy.svg',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
            label: 'Earn More',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (_selectedIndex == 2)
                    Positioned(
                      top: 0,
                      child: Container(
                        width: 50,
                        height: 3,
                        color: Colors.black, // Barra preta
                      ),
                    ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Icon(Icons.document_scanner, color: Colors.white, size: 25),
                ],
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  if (_selectedIndex == 3)
                    Positioned(
                      top: 0,
                      child: Container(
                        width: 50,
                        height: 3,
                        color: Colors.black, // Barra preta
                      ),
                    ),
                  Icon(Icons.storefront, color: Color.fromARGB(255, 0, 0, 0)),
                ],
              ),
            ),
            label: 'All Stores',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 4;
                });
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  if (_selectedIndex == 4)
                    Positioned(
                      top: 0,
                      child: Container(
                        width: 50,
                        height: 3,
                        color: Colors.black, // Barra preta
                      ),
                    ),
                  Icon(Icons.person, color: Color.fromARGB(255, 0, 0, 0)),
                ],
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
