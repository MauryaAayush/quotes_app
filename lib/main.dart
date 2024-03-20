import 'package:flutter/material.dart';

import 'Views/Homescreen.dart';

void main()
{
  runApp(const QuotesApp());
}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const Homescreen(),
      },
    );
  }
}
