import 'package:flutter/material.dart';

class RotationRoute extends PageRouteBuilder {
  final Widget page;

  RotationRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionDuration: Duration(seconds: 1),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            // Apply the rotation transition
            return RotationTransition(
              turns: animation,
              child: child,
            );
          },
        );
}
