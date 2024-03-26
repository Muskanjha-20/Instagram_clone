import 'package:flutter/material.dart';
import 'package:insta_app/screens/home_page.dart';
import 'package:insta_app/screens/search_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? SearchScreen() : HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: currentPage == 0 ? Colors.pink : Colors.black,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.search,
                color: currentPage == 1 ? Colors.pink : Colors.black,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.add_box_outlined,
                color: currentPage == 2 ? Colors.pink : Colors.black,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.ondemand_video,
                color: currentPage == 3 ? Colors.pink : Colors.black,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
            ),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.person_pin,
                color: currentPage == 4 ? Colors.pink : Colors.black,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
