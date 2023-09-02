import 'package:flutter/material.dart';
import 'package:social_media_app_ui/post/postitems.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostItems(like: "1.2M",comment: "6k",chanelname: "shapater",share: "1.6k",hashtag: "  #reel #tiktok",username: "@kodo",userpost: Container(color: Colors.lightBlueAccent[700],));
  }
}
