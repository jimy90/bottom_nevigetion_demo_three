import 'package:flutter/material.dart';

int cccurrentindex = 0;
final tabs = [
  Center(
    child: Icon(
      Icons.settings,
      size: 200,
    ),
  ),
  Center(
    child: Icon(
      Icons.camera_alt_outlined,
      size: 200,
    ),
  ),
  Center(
    child: Icon(
      Icons.contact_emergency,
      size: 200,
    ),
  ),
  Center(
    child: Icon(
      Icons.add_box_rounded,
      size: 200,
    ),
  ),
];
void main() => runApp(MaterialApp(
      title: 'my app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(shadowColor: Colors.black),
      home: homepage(),
    ));

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter Page',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 182, 42, 0),
      ),
      body: tabs[cccurrentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cccurrentindex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'setting',
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'camera'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_emergency), label: 'contac'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'add'),
        ],
        onTap: (index) {
          setState(() {
            cccurrentindex = index;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
