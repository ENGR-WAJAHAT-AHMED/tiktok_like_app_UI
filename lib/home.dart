import 'package:flutter/material.dart';
import 'package:social_media_app_ui/post/post1.dart';
import 'package:social_media_app_ui/post/post2.dart';
import 'package:social_media_app_ui/post/post3.dart';
import 'package:social_media_app_ui/post/postitems.dart';

class UserHomePage extends StatelessWidget {
  UserHomePage({Key? key}) : super(key: key);
  final _controler = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controler,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
          PostItems(
              like: "1.2M",
              comment: "6k",
              chanelname: "shapater",
              share: "1.6k",
              hashtag: "  #reel #tiktok",
              username: "@kodo",
              userpost: Container(
                color: Colors.cyanAccent[400],
              )),
          PostItems(
              like: "1.2M",
              comment: "6k",
              chanelname: "shapater",
              share: "1.6k",
              hashtag: "  #reel #tiktok",
              username: "@kodo",
              userpost: Container(
                color: Colors.redAccent[700],
              )),
        ],
      ),
    );
  }
}
