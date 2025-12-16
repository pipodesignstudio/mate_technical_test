import 'package:flutter/material.dart';
import 'package:mate_technical_test/shared/widgets/custom_appbar_widget.dart';
import 'package:mate_technical_test/shared/widgets/custom_bottom_navigation_bar_widget.dart';

class AppLayout extends StatelessWidget {

  final bool detailedView;
  final Widget view;


  const AppLayout({super.key, required this.detailedView, required this.view});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(detailedView: detailedView),
      extendBodyBehindAppBar: true,
      body: view,
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}