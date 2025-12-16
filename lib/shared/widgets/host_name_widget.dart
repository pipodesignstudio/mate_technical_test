import 'package:flutter/material.dart';

class HostNameWidget extends StatelessWidget {
  const HostNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Hosted by ',
                              style: TextStyle(color: Colors.white, fontSize: 20.0),
                            ),
                            TextSpan(
                              text: 'Léo',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        softWrap: true,
                      );
  }
}