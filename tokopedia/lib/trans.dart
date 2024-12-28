import 'package:flutter/material.dart';
import 'package:tokopedia/envelope.dart';
import 'package:tokopedia/notif.dart';
import 'package:tokopedia/toko.dart';
import 'package:tokopedia/beli.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TransScreen(),
      routes: {
        '/envelope': (context) => Amplop(),
        '/notif': (context) => Notif(),
        '/toko': (context) => TokoPage(),
        '/beli': (context) => BeliPage(),
      },
    );
  }
}

class TransScreen extends StatefulWidget {
  const TransScreen({super.key});

  @override
  State<TransScreen> createState() => _TransScreenState();
}

class _TransScreenState extends State<TransScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 180,
                    height: 34,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      controller: _searchController,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.1, horizontal: 10.0),
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 0.0),
                  IconButton(
                    icon: Image.asset(
                      'images/envelope.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/envelope');
                    },
                  ),
                  const SizedBox(width: 0.0),
                  IconButton(
                    icon: Image.asset(
                      'images/notifikasi.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/notif');
                    },
                  ),
                  const SizedBox(width: 0.0),
                  IconButton(
                    icon: Image.asset(
                      'images/cart.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/beli');
                    },
                  ),
                  const SizedBox(width: 0.0),
                  IconButton(
                    icon: Image.asset(
                      'images/more.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Expanded(
            child: ListView(
              children: [
                // Item 1
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 340,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/bx3.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 340,
                          height: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/belanja.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Belanja',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '17 April 2024',
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 1.0),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/man.png',
                                      width: 35,
                                      height: 38,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Jersey Manchester United Home 23/24',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '1 barang',
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Row(
                            children: [
                              Image.asset(
                                'images/selesai.png',
                                width: 35,
                                height: 15,
                              ),
                              const SizedBox(width: 4.0),
                              PopupMenuButton<void Function()>(
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(
                                      value: () => debugPrint('Item 1 hit'),
                                      child: const Text('Item 1'),
                                    ),
                                    PopupMenuItem(
                                      value: () => debugPrint('Item 2 hit'),
                                      child: const Text('Item 2'),
                                    ),
                                  ];
                                },
                                onSelected: (fn) => fn(),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 8,
                          child: Row(
                            children: [
                              const SizedBox(width: 4.0),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/toko');
                                },
                                child: Image.asset(
                                  'images/buy.png',
                                  width: 68,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Total Belanja',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Rp 31.800',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Item 2
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 340,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/bx3.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 340,
                          height: 180,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/belanja.png',
                                      width: 24,
                                      height: 24,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Belanja',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '14 April 2024',
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 1.0),
                                Divider(
                                  color: Colors.grey,
                                  thickness: 1,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/samsung.png',
                                      width: 35,
                                      height: 38,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Samsung Galaxy A25 8/256 5G',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '1 barang',
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Row(
                            children: [
                              Image.asset(
                                'images/selesai.png',
                                width: 35,
                                height: 15,
                              ),
                              const SizedBox(width: 4.0),
                              PopupMenuButton<void Function()>(
                                itemBuilder: (context) {
                                  return [
                                    PopupMenuItem(
                                      value: () => debugPrint('Item 1 hit'),
                                      child: const Text('Item 1'),
                                    ),
                                    PopupMenuItem(
                                      value: () => debugPrint('Item 2 hit'),
                                      child: const Text('Item 2'),
                                    ),
                                  ];
                                },
                                onSelected: (fn) => fn(),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 8,
                          child: Row(
                            children: [
                              const SizedBox(width: 4.0),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/toko');
                                },
                                child: Image.asset(
                                  'images/buy.png',
                                  width: 68,
                                  height: 22,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Total Belanja',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Rp 6.875.000',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //

                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
