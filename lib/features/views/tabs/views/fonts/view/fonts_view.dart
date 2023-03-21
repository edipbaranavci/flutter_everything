import 'package:flutter/material.dart';
import 'package:flutter_everything/core/components/app_bar/custom_app_bar.dart';

class FontsView extends StatelessWidget {
  const FontsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(pageTitle: 'Fontlar'),
      body: Column(
        children: [
          Text('h1'),
          Text('h2'),
          Text('h3'),
          Text('h4'),
          Text('h5'),
          Text('h6'),
        ],
      ),
    );
  }
}
