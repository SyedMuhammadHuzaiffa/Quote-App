import 'package:flutter/material.dart';
import 'package:quote_app/quotes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quotes App',
      home: MyHomePage(title: 'Quotes App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void _changeQuote(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildDrawerItem(String title, int index) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ),
      ),
      onTap: () {
        _changeQuote(index);
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final quote = Quote.quotes[_currentIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromRGBO(68, 188, 245, 100),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(68, 188, 245, 100),
                border: Border.all(color: Colors.black, width: 8),
              ),
              child: const Text(
                'Quotes Types',
                style: TextStyle(
                  fontSize: 45,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            _buildDrawerItem('Fashion', 0),
            _buildDrawerItem('Sports', 1),
            _buildDrawerItem('Inspirational', 2),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => _changeQuote((_currentIndex + 1) % Quote.quotes.length),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                quote.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                quote.author,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 185, 21, 9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
