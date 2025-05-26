import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/front_end/responsive/responsive.dart';

import 'front_end/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (notification) {
        notification.disallowIndicator();
        return true;
      },
      child:  MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode:  ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          home: TResponsive(),

      ),
    );
  }
}
