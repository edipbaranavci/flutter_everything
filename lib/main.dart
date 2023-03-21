import 'package:flutter/material.dart';
import 'package:flutter_everything/core/init/theme/colors/app_colors.dart';

import 'features/views/tabs/views/tabs_view.dart';

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
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: AppColors.instance.mineShaft,
              iconTheme: Theme.of(context).appBarTheme.iconTheme?.copyWith(
                    color: AppColors.instance.white,
                  ),
            ),
      ),
      home: const TabsView(),
    );
  }
}
