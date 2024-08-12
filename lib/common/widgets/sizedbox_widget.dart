import 'package:flutter/widgets.dart';

class SizedboxWidget extends StatelessWidget {
  const SizedboxWidget({
    super.key,
    this.child,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}
