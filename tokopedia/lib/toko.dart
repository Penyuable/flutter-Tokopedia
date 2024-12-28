import 'package:flutter/material.dart';
import 'package:tokopedia/beli.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TokoPage(),
      routes: {
        '/cart': (context) => BeliPage(),
      },
    );
  }
}

class TokoPage extends StatefulWidget {
  @override
  _TokoPageState createState() => _TokoPageState();
}

class _TokoPageState extends State<TokoPage> {
  bool isLoved = false;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(
            iconSize: 20.0,
            icon: Image.asset('images/cart.png'),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
          IconButton(
            iconSize: 28.0,
            icon: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                Icon(
                  isLoved ? Icons.favorite : Icons.favorite_border,
                  color: isLoved ? Colors.red : Colors.white,
                  size: 25.0,
                ),
              ],
            ),
            onPressed: () {
              setState(() {
                isLoved = !isLoved;
              });
            },
          ),
          IconButton(
            iconSize: 20.0,
            icon: Image.asset('images/more.png'),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Center(
            child: Image.asset(
              'images/syn.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
          SizedBox(height: 16),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Rp2.179.999',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              SizedBox(width: 8),
              Image.asset(
                'images/ongkir.png',
                height: 24,
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Guitar Electric Gitar Elektrik Cort G115WH G115 G-115 Original',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Image.asset('images/btg.png', width: 24),
              SizedBox(width: 1),
              Text(
                'Terjual 5',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 4),
              Text(
                '5.0 (3)',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 48),
          Text(
            'Detail Produk',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                'Etalase',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              SizedBox(width: 90),
              Text(
                'GITAR ELEKTRIK MELODY',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 170, 91),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(thickness: 1),
          SizedBox(height: 8),
          Text(
            'Deskripsi Produk',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, vitae scelerisque enim ligula venenatis dolor. Maecenas nisl est, ultrices nec congue eget, auctor vitae massa. ' +
                (isExpanded
                    ? 'Fusce luctus vestibulum augue ut aliquet. Nunc sagittis dictum nisi, sed ullamcorper ipsum dignissim ac. In at libero sed nunc venenatis imperdiet sed ornare turpis. Donec vitae dui eget tellus gravida venenatis. Integer fringilla congue eros non fermentum. Sed dapibus pulvinar nibh tempor porta. Cras ac leo purus. Mauris quis diam velit.'
                    : ''),
            maxLines: isExpanded ? null : 3,
            overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Tutup' : 'Baca Selengkapnya',
              style: TextStyle(color: Color.fromARGB(255, 0, 170, 91)),
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/cart');
                },
                child: Image.asset(
                  'images/chat.png',
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      child: Image.asset(
                        'images/lgs.png',
                        width: 150,
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/cart');
                      },
                      child: Image.asset(
                        'images/tambah.png',
                        width: 150,
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
