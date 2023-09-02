import 'package:flutter/material.dart';

class tabBar extends StatelessWidget {
  const tabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (context, index) {
          return ;
        });
  }
}
