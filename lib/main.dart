import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

// Главный экран
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0, // выбранный таб при открытии приложения
      length:
          3, // количество табов (должно соответствовать количеству tabs и TabBarView)
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          leading: Icon(Icons.search),
          bottom: TabBar(
            labelColor: Colors.deepOrangeAccent, // цвет активного таба
            unselectedLabelColor: Colors.blueAccent, // цвет неактивного таба
            dividerColor: Colors.transparent, // цвет разделителя
            indicatorColor: Colors.deepOrange, // цвет индикатора
            // overlayColor: MaterialStatePropertyAll(
            //   Colors.blueGrey.shade200,
            // ), // цвет эффекта при нажатии
            indicatorSize: TabBarIndicatorSize.tab, // длина индикатора
            indicatorWeight: 2, // толщина индикатора
            // indicatorPadding: EdgeInsets.symmetric(
            //     horizontal: 10), // внутренние отступы индикатора
            // labelPadding: EdgeInsets.symmetric(vertical: 10), // внутренний отступ таба
            padding: EdgeInsets.symmetric(
                horizontal: 10), // внутренний отступ таббара
            tabAlignment: TabAlignment.fill,
            indicator: BoxDecoration(
              // более глубокая стилизация индикатора
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            tabs: [
              Tab(
                icon: Icon(Icons.html),
                text: "HTML",
              ),
              Tab(
                icon: Icon(Icons.javascript),
                text: "Javascript",
              ),
              Tab(
                icon: Icon(Icons.css_sharp),
                text: "CSS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("First Screen")),
            Center(child: Text("Second Screen")),
            Center(child: Text("Third Screen")),
          ],
        ),
      ),
    );
  }
}
