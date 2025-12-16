import 'package:flutter/material.dart';

class PageTagWidget extends StatelessWidget {

  final String title;

  const PageTagWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 120),
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
        vertical: 4.0
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, .2),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 2.0,
          color: Colors.white,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 4.0),
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            )),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 18.0)),
        ],
      ),
    );
  }
}