Do: 
------------------------
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
        '/beli': (context) => CartPage(),
      },
    );
  }
}