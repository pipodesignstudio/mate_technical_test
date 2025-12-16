import 'package:flutter/material.dart';

class MainCircleAvatar extends StatelessWidget {
  const MainCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      alignment: Alignment.center,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color.fromRGBO(255, 255, 255, .6),
            Color.fromRGBO(255, 255, 255, 0),
          ],
        )
        ),
        child: ClipOval(
          child: Transform.scale(
            alignment: Alignment.topCenter,
            origin: const Offset(0, 20),
            scale: 5,
            child: Image.asset(
              'assets/img/main_avatar.jpg',
              width: 70,
              height: 70,
              fit: BoxFit.contain,
            ),
          ),
        ),
    );
  }
}