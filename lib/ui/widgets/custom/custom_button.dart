import 'package:admin/config/constants/app_constants.dart';
import 'package:admin/ui/widgets/ripple_remover.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.child,
    this.decoration,
    this.onPressed,
    this.padding = const EdgeInsets.all(16),
    Key? key,
  }) : super(key: key);

  final Widget child;
  final BoxDecoration? decoration;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) => _buildBoxDecoration(
        child: _buildMaterialButton(),
      );

  Widget _buildBoxDecoration({
    required Widget child,
  }) {
    var circleChild = child;
    if (decoration?.shape == BoxShape.circle) {
      circleChild = ClipOval(
        child: child,
      );
    }
    return AnimatedContainer(
      decoration: decoration,
      duration: AppConstants.animation.defaultDuration,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: circleChild,
    );
  }

  Widget _buildMaterialButton() {
    final borderRadiusGeometry = decoration?.borderRadius;
    final borderRadius =
        borderRadiusGeometry is BorderRadius ? borderRadiusGeometry : null;
    final child = Material(
      borderRadius: borderRadius,
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onPressed,
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Center(
            child: this.child,
          ),
        ),
      ),
    );
    return kIsWeb
        ? RippleRemover(
            child: child,
          )
        : child;
  }
}
