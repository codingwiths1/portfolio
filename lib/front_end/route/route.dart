import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/about/about.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/contact/contact.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/home/home.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/packages/packages.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/portfolio/portfolio.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/testimonial/testimonial.dart';

import '../responsive/responsive.dart';
import '../utils/helper/color.dart';

class TRoutes {
  static String home = "/welcome";
  static String about = "/the-artisan";
  static String contact = "/private-access";
  static String packages = "/prestige-suites";
  static String portfolio = "/signature-works";
  static String testimonials = "/client-reverence";
  // static String home = "/home";
  // static String home = "/home";
  // static String home = "/home";
  // static String home = "/home";
  // static String home = "/home";

  static List<RouteBase> routes = [
    GoRoute(
      path: "/",
      redirect: (context, state) => home,
    ),
    GoRoute(
      path: home,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: TResponsive(
          desktop: TDesktopHome(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween<Offset>(
            begin: Offset(1, 0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeIn,
            ),
          );
          return SlideTransition(
            position: tween,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: about,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: TResponsive(
          desktop: TDesktopAbout(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween<Offset>(
            begin: Offset(1, 0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeIn,
            ),
          );
          return SlideTransition(
            position: tween,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: contact,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: TResponsive(
          desktop: TDesktopContact(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween<Offset>(
            begin: Offset(1, 0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeIn,
            ),
          );
          return SlideTransition(
            position: tween,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: packages,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: TResponsive(
          desktop: TDesktopPackages(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween<Offset>(
            begin: Offset(1, 0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeIn,
            ),
          );
          return SlideTransition(
            position: tween,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: portfolio,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: TResponsive(
          desktop: TDesktopPortfolio(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween<Offset>(
            begin: Offset(1, 0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeIn,
            ),
          );
          return SlideTransition(
            position: tween,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: testimonials,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: TResponsive(
          desktop: TDesktopTestimonial(),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween<Offset>(
            begin: Offset(1, 0),
            end: Offset.zero,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeIn,
            ),
          );
          return SlideTransition(
            position: tween,
            child: child,
          );
        },
      ),
    ),
  ];

  static location(BuildContext context, String targetLocation) {
    String currentLocation = GoRouterState.of(context).uri.toString();

    return currentLocation == targetLocation ? Colors.black : Colors.white;
  }

// static leftCurrentColor(String location) {
  //   switch (location) {
  //     case '/':
  //       return TColors.blue;
  //     case "/welcome":
  //       return TColors.blue;
  //     case '/the-artisan':
  //       return TColors.blue;
  //     case '/private-access':
  //       return TColors.blue;
  //     case '/prestige-suites':
  //       return TColors.blue;
  //     case '/signature-works':
  //       return TColors.blue;
  //     case '/client-reverence':
  //       return TColors.blue;
  //   }
  // }
}
