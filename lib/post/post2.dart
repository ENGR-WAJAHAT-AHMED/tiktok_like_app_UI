import 'package:flutter/material.dart';
import 'package:social_media_app_ui/post/postitems.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostItems(like: "900",comment: "21",chanelname: "hero",share: "6",hashtag: "  #reel #tiktok",username: "@shapri",userpost: Container(color: Colors.greenAccent[700],));
  }
}
