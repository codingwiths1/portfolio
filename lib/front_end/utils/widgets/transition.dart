import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visibility_detector/visibility_detector.dart';

class TVisibility extends StatelessWidget {
  const TVisibility({
    super.key,
    required this.child,
    required this.uniqueKey, required this.function,
  });
  final Widget child;
  final Key uniqueKey;
  final void Function() function;


  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: uniqueKey,
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction > 0.1) {
          function();
        }
      },
      child: child,
    );
  }
}
