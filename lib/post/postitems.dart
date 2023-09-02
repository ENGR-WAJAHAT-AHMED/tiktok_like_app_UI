import 'package:flutter/material.dart';

class PostItems extends StatelessWidget {

  final String like;
  final String comment;
  final String share;
  final String username;
  final String chanelname;
  final String hashtag;
  final userpost;




  const PostItems({Key? key, required this.like, required this.comment, required this.share, required this.username, required this.chanelname, required this.hashtag, this.userpost}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userpost,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    username,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(text: chanelname,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                        TextSpan(
                            text: hashtag,
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                      ])),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1,1),
              child: Padding(
                padding: const EdgeInsets.only(right: 8,bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite,size: 40,),
                    SizedBox(height: 10,),
                    Text(like),
                    SizedBox(height: 25,),
                    Icon(Icons.chat_bubble_outlined,size: 40,),
                    SizedBox(height: 10,),
                    Text(comment),
                    SizedBox(height: 25,),
                    Icon(Icons.send,size: 40,),
                    SizedBox(height: 10,),
                    Text(share),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
