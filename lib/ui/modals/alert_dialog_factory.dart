import 'package:admin/ui/modals/alert_dialog_action.dart';
import 'package:admin/utils/intl_util.dart';
import 'package:flutter/material.dart';

abstract class AlertDialogFactory {
  const AlertDialogFactory._();

  static void _showDialog(
    BuildContext context, {
    required String title,
    required List<AlertDialogAction> actions,
    String? content,
    bool rootNavigator = false,
  }) =>
      showDialog(
        context: context,
        useRootNavigator: rootNavigator,
        builder: (context) => AlertDialog(
          title: Text(
            title,
          ),
          content: content?.isNotEmpty ?? false
              ? Text(
                  content!,
                )
              : null,
          actions: actions,
        ),
      );

  static void showOKAlert(
    BuildContext context, {
    required String title,
    String? content,
    bool rootNavigator = false,
    VoidCallback? onPressed,
  }) {
    _showDialog(
      context,
      title: title,
      content: content,
      rootNavigator: rootNavigator,
      actions: [
        AlertDialogAction(
          title: IntlUtil.translate('ok'),
          onPressed: onPressed ??
              () => Navigator.of(
                    context,
                    rootNavigator: rootNavigator,
                  ).pop(),
        ),
      ],
    );
  }

  static void showContentUnavailable(
    BuildContext context, {
    bool rootNavigator = true,
    VoidCallback? onPressed,
  }) {
    showOKAlert(
      context,
      title: IntlUtil.translate('Unavailable'),
      content: IntlUtil.translate(
        'Selected functionality is not yet available.',
      ),
      rootNavigator: rootNavigator,
      onPressed: onPressed,
    );
  }
}
