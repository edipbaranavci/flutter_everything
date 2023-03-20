import 'package:flutter/material.dart';

import 'features/views/tabs/view/tabs_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String title = 'Flutter Everything (EKABAV)';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const TabsView(),
    );
  }
}
