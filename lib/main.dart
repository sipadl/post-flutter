import 'package:flutter/material.dart';
import 'package:myapp/Pages/home_page.dart';
import './Component/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text(
      'List Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Search Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Profile Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    const Text(
      'Setting Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter Navbar Example'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
