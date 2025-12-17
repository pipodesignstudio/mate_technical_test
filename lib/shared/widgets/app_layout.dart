import 'package:flutter/material.dart';
import 'package:mate_technical_test/shared/widgets/custom_appbar_widget.dart';
import 'package:mate_technical_test/shared/widgets/custom_bottom_navigation_bar_widget.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key, required this.detailedView, required this.view});

  final bool detailedView;
  final Widget view;

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  late bool _showBottomNav;

  @override
  void initState() {
    super.initState();
    _showBottomNav = !widget.detailedView;
  }

  @override
  Widget build(BuildContext context) {
    Widget body = widget.view;

    if (widget.detailedView) {
      body = NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          final bool shouldShow = notification.metrics.pixels > 0;
          if (shouldShow != _showBottomNav) {
            setState(() => _showBottomNav = shouldShow);
          }
          return false;
        },
        child: widget.view,
      );
    }

    return Scaffold(
      appBar: CustomAppBar(detailedView: widget.detailedView),
      extendBodyBehindAppBar: true,
      body: body,
      extendBody: true,
      bottomNavigationBar: _showBottomNav ? const CustomBottomNavigationBar() : null,
    );
  }
}
