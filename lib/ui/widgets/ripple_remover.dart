import 'package:flutter/material.dart';

class RippleRemover extends StatelessWidget {
  const RippleRemover({
    required this.child,
    this.isEnabled = true,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    if (isEnabled) {
      return Theme(
        data: Theme.of(context).copyWith(
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: child,
      );
    }
    return child;
  }
}
