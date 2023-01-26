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
      backgroundColor: Color(0xDE3A3A3A),
      // esqueleto
      appBar: AppBar(
        title: const Text('Dicing'),
        centerTitle: true,
        backgroundColor: Color(0xDE171616),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF282828),
        child: ListView(
          children: const [
            ListTile(
              title: Text('History',style: TextStyle(
                color: Color(0xFFD0D0D0)
              ),
              ),
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
          backgroundColor: Color(0xDE171616),
          fixedColor: Colors.white,
          unselectedItemColor: Color(0xDE777777),
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
