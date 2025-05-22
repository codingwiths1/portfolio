import 'package:flutter/cupertino.dart';

class TConstraints extends StatelessWidget {
  const TConstraints({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1200,
        ),
        child: child,
      ),
    );
  }
}
