import 'package:flutter/material.dart';
import 'toko.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TokoPage(),
    );
  }
}

class BeliPage extends StatefulWidget {
  @override
  _BeliPageState createState() => _BeliPageState();
}

class _BeliPageState extends State<BeliPage> {
  bool isStoreChecked = false;
  bool isLoved = false;
  int itemCount = 1;

  List<bool> itemChecked = [false, false];

  void toggleLove() {
    setState(() {
      isLoved = !isLoved;
    });
  }

  void increaseItemCount() {
    setState(() {
      itemCount++;
    });
  }

  void decreaseItemCount() {
    setState(() {
      if (itemCount > 1) {
        itemCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bw.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              // Bagian toko1
              Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Checkbox(
                      value: isStoreChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isStoreChecked = value!;
                          for (int i = 0; i < itemChecked.length; i++) {
                            itemChecked[i] = value;
                          }
                        });
                      },
                    ),
                    Image.asset('images/pro.png', width: 24, height: 24),
                    SizedBox(width: 8),
                    Text(
                      'Store Tan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Image.asset('images/ongkir.png', width: 80, height: 24),
                  ],
                ),
              ),
              // Item 1
              Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: itemChecked[0],
                      onChanged: (bool? value) {
                        setState(() {
                          itemChecked[0] = value!;
                        });
                      },
                    ),
                    Stack(
                      children: [
                        Image.asset('images/sn.png', width: 80, height: 80),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            color: Colors.red,
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              '60%',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pick Gitar Premium / Pick Ukulele / Pick Bass',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp5.000',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Rp12.500',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Image.asset('images/tulis.png',
                                      width: 24, height: 24),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    isLoved
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isLoved ? Colors.red : null,
                                    size: 24,
                                  ),
                                  onPressed: toggleLove,
                                ),
                                Spacer(),
                                Container(
                                  width: 73,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/border.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove,
                                            color: Colors.black),
                                        onPressed: decreaseItemCount,
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                      ),
                                      Text(itemCount.toString()),
                                      IconButton(
                                        icon: Icon(Icons.add,
                                            color: Colors.black),
                                        onPressed: increaseItemCount,
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
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
                  ],
                ),
              ),
              // Item 2
              Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: itemChecked[1],
                      onChanged: (bool? value) {
                        setState(() {
                          itemChecked[1] = value!;
                        });
                      },
                    ),
                    Stack(
                      children: [
                        Image.asset('images/gtr.png', width: 80, height: 80),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            color: Colors.red,
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              '50%',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Senar Gitar Akustik String Coated Phosphor Bronze',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp50.000',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Rp100.000',
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Image.asset('images/tulis.png',
                                      width: 24, height: 24),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    isLoved
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isLoved ? Colors.red : null,
                                    size: 24,
                                  ),
                                  onPressed: toggleLove,
                                ),
                                Spacer(),
                                Container(
                                  width: 73,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/border.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.remove,
                                            color: Colors.black),
                                        onPressed: decreaseItemCount,
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                      ),
                                      Text(itemCount.toString()),
                                      IconButton(
                                        icon: Icon(Icons.add,
                                            color: Colors.black),
                                        onPressed: increaseItemCount,
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.green.withOpacity(0.1),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Image.asset('images/proms.png', width: 24, height: 24),
                SizedBox(width: 8),
                Text(
                  'Pilih barang dulu sebelum pakai promo',
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
              ],
            ),
          ),
          BottomAppBar(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  // Checkbox for selecting all items
                  Checkbox(
                    value: isStoreChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isStoreChecked = value!;
                        for (int i = 0; i < itemChecked.length; i++) {
                          itemChecked[i] = value;
                        }
                      });
                    },
                  ),
                  // Text "Semua"
                  Text(
                    'Semua',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  // Total Price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text(
                        '-',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(width: 16),
                  // Button "Beli"
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TokoPage()),
                      );
                    },
                    child:
                        Image.asset('images/beli.png', width: 80, height: 32),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
