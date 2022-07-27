import 'package:admin/ui/modals/alert_dialog_factory.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  void showContentUnavailable() =>
      AlertDialogFactory.showContentUnavailable(this);
}
