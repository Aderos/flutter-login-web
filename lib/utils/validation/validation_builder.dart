import 'package:admin/utils/intl_util.dart';
import 'package:admin/utils/validation/validators_util.dart';
import 'package:flutter/material.dart';

typedef ValidationRuleCallback = String? Function(
  String? value,
  BuildContext context,
);

class ValidationBuilder {
  final List<ValidationRuleCallback> rules = [];

  ValidationBuilder add(ValidationRuleCallback validator) =>
      this..rules.add(validator);

  ValidationBuilder isNotBlank() => add(
        (text, context) => ValidatorsUtil.isNotBlank(text)
            ? null
            : IntlUtil.translate('Must be not blank'),
      );

  String? build(String? text, BuildContext context) {
    for (final rule in rules) {
      final result = rule(text, context);
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}
