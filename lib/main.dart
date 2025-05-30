import 'dart:ui_web';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/front_end/route/route.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  /// INITIALIZE WIDGETS
  WidgetsFlutterBinding.ensureInitialized();

  /// FIREBASE
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  /// URL STRATEGY
  setPathUrlStrategy();

  /// RUN APP
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
      child: MaterialApp.router(
        routerConfig: _router,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

final GoRouter _router = GoRouter(
  routes: TRoutes.routes,
  initialLocation: "/",
);
