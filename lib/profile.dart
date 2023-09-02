import 'package:flutter/material.dart';
import 'package:social_media_app_ui/tabbar/tabbar.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "WAJAHAT",
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 12),
              child: Icon(Icons.menu, color: Colors.black),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[700],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "@wajahmedSheikh",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text(
                          '0',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          '800',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          '120',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          'Likes',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[800],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.grey[800],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'bio here',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.grid_3x3,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.lock_outline_rounded,
                  color: Colors.black,
                ),
              ),
            ]),
            Expanded(child: TabBarView(children: [
              tabBar(items:8,userpost: Container(color: Colors.blue,)),
              tabBar(items:13,userpost: Container(color: Colors.green,)),
              tabBar(items:6,userpost: Container(color: Colors.red,)),
            ]))
          ],
        ),
      ),
    );
  }
}
