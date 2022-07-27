import 'package:flutter/material.dart';

enum Platform { material, cupertino, adaptive }

enum AdaptiveWidgetType { material, cupertino }

class AdaptiveWidgetUtil {
  const AdaptiveWidgetUtil._();

  static AdaptiveWidgetType getWidgetTypeOf(
    BuildContext context, {
    required Platform platform,
  }) {
    switch (platform) {
      case Platform.adaptive:
        final theme = Theme.of(context);
        if (theme.platform == TargetPlatform.iOS) {
          return AdaptiveWidgetType.cupertino;
        }
        return AdaptiveWidgetType.material;
      case Platform.cupertino:
        return AdaptiveWidgetType.cupertino;
      case Platform.material:
        return AdaptiveWidgetType.material;
    }
  }
}
