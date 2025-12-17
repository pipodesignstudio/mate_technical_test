import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/views/detail_view.dart';
import 'package:mate_technical_test/features/feed/views/feed_view.dart';
import 'package:mate_technical_test/router/basic_routes.dart';
import 'package:mate_technical_test/shared/widgets/app_layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mate Technical Test',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(27, 27, 27, 1),
      ),
      initialRoute: BasicRoutes.feed,
      routes: {
        BasicRoutes.feed: (context) => const AppLayout(detailedView: false, view: FeedView()),
        BasicRoutes.details: (context) => const AppLayout(detailedView: true, view: DetailView()),
      }
    );
  }
}
