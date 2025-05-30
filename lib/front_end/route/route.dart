import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/about/about.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/contact/contact.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/home/home.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/packages/packages.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/portfolio/portfolio.dart';
import 'package:portfolio/front_end/responsive/desktop/screens/testimonial/testimonial.dart';

import '../responsive/mobile/screens/about/about.dart';
import '../responsive/mobile/screens/contact/contact.dart';
import '../responsive/mobile/screens/home/home.dart';
import '../responsive/mobile/screens/packages/packages.dart';
import '../responsive/responsive.dart';
import '../responsive/tablet/screens/about/about.dart';
import '../responsive/tablet/screens/contact/contact.dart';
import '../responsive/tablet/screens/home/home.dart';
import '../responsive/tablet/screens/packages/packages.dart';

class TRoutes {
  static String home = "/welcome";
  static String about = "/the-artisan";
  static String contact = "/private-access";
  static String packages = "/prestige-suites";
  static String portfolio = "/signature-works";
  static String testimonials = "/client-reverence";

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
          tablet: TTabletHome(),
          mobile: TMobileHome(),
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
          tablet: TTabletAbout(),
          mobile: TMobileAbout(),
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
          tablet: TTabletContact(),
          mobile: TMobileContact(),
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
          tablet: TTabletPackages(),
          mobile: TMobilePackages(),
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
          tablet: SizedBox(),
          mobile: SizedBox(),
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
          tablet: SizedBox(),
          mobile: SizedBox(),
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
