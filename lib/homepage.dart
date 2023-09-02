import 'package:flutter/material.dart';
import 'package:social_media_app_ui/home.dart';
import 'package:social_media_app_ui/inbox.dart';
import 'package:social_media_app_ui/plus.dart';
import 'package:social_media_app_ui/profile.dart';
import 'package:social_media_app_ui/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedInndex = 4;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedInndex = index;
    });
  }
final List<Widget> _pages = [
  UserHomePage(),
  UserSearchPage(),
  UserInboxPage(),
  UserPlusPage(),
  UserProfilePage(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedInndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedInndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded), label: 'Inbox'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
