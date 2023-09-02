import 'package:flutter/material.dart';
import 'package:social_media_app_ui/post/postitems.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostItems(like: "50K",comment: "450",chanelname: "life hacks",share: "322",hashtag: "  #reel #tiktok",username: "@coco",userpost: Container(color: Colors.amberAccent[700],),);
  }
}
