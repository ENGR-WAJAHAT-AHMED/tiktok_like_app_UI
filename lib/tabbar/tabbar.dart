import 'package:flutter/material.dart';

class tabBar extends StatelessWidget {
  final userpost;
  final int items;
  const tabBar({Key? key, this.userpost, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.only(left: 1.5,right: 1.5,top: 3),
              child: Stack(

                children: [
                  userpost,
                ],

              ),
            ),
          );
        });
  }
}
