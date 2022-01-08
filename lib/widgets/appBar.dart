//ignore_for_file: sized_box_for_whitespace, file_names
import 'package:flutter/material.dart';
import 'package:tinder_ui/widgets/bottomBar.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonWidget(Icons.star, Colors.amber),
          imageWidget('assets/images.jpeg'),
          imageWidget('assets/diamond.png'),
          buttonWidget(Icons.notifications, Colors.grey.shade400)
        ],
      ),
    );
  }
}

Widget imageWidget(String image) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
  );
}
