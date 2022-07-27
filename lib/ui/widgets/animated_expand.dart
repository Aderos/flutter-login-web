import 'package:flutter/material.dart';

class AnimatedExpand extends StatefulWidget {
  const AnimatedExpand({
    required this.child,
    this.axis = Axis.vertical,
    this.duration = const Duration(
      milliseconds: 250,
    ),
    this.expand = false,
    Key? key,
  }) : super(key: key);

  final Axis axis;
  final Widget child;
  final bool expand;
  final Duration duration;

  @override
  AnimatedExpandState createState() => AnimatedExpandState();
}

class AnimatedExpandState extends State<AnimatedExpand>
    with SingleTickerProviderStateMixin {
  late AnimationController _expandController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    if (widget.expand) {
      _expandController.forward();
    }
  }

  ///Setting up the animation
  void prepareAnimations() {
    _expandController = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    final curve = CurvedAnimation(
      parent: _expandController,
      curve: Curves.easeInOut,
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(curve)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void didUpdateWidget(AnimatedExpand oldWidget) {
    super.didUpdateWidget(oldWidget);
    widget.expand ? _expandController.forward() : _expandController.reverse();
  }

  @override
  void dispose() {
    _expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizeTransition(
        axis: widget.axis,
        axisAlignment: 1.0,
        sizeFactor: _animation,
        child: widget.child,
      );
}
