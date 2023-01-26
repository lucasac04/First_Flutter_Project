import 'package:flutter/material.dart';
import 'package:teste/Pages/pagesViews/PageRolls.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int indexBottomNavigationBar = 0;
  @override
  Widget build(BuildContext context) {
    //final heightDevice = MediaQuery
    //.of(context)
    //.size
    //.height;
    //final widthDevice = MediaQuery
    //.of(context)
    //.size
    //.width;

    return Scaffold(
      backgroundColor: Colors.white70,
      // esqueleto
      appBar: AppBar(
        title: const Text('Dicing'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text('History'),
            )
          ],
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          const PageRolls(),
          Container(
            color: Colors.green,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black54,
          fixedColor: Colors.white,
          currentIndex: indexBottomNavigationBar,
          onTap: (int index) {
            setState(() {
              indexBottomNavigationBar = index;
            });
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new_sharp),
              label: 'Rolls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_sharp),
              label: 'Monsters',
            )
          ]),
    );
  }
}
