// ignore_for_file: library_private_types_in_public_api

import 'package:admin/config/constants/app_constants.dart';
import 'package:admin/config/styles/colors/app_colors.dart';
import 'package:admin/config/styles/decorations/app_decorations.dart';
import 'package:admin/config/styles/text_styles/app_text_styles.dart';
import 'package:admin/ui/widgets/animated_expand.dart';
import 'package:admin/ui/widgets/animated_text.dart';
import 'package:admin/ui/widgets/custom/custom_button.dart';
import 'package:admin/utils/validation/validation_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'custom_text_field_error.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    this.autocorrect = true,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.initialText,
    this.inputFormatters,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    this.textInputAction,
    this.validator,
    this.expands = false,
    this.minLines = 1,
    this.maxLines = 1,
  }) : super(key: key);

  final bool autocorrect;
  final AutovalidateMode autovalidateMode;
  final String? initialText;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final ValidationRuleCallback? validator;
  final int? minLines;
  final int? maxLines;
  final bool expands;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController controller = TextEditingController(
    text: widget.initialText,
  );

  late bool obscureText = widget.obscureText;
  bool hasFocus = false;
  late bool hasText = controller.text.isNotEmpty;
  bool hadFirstFocus = false;
  bool forcedValidation = false;

  bool get isValid => widget.validator?.call(controller.text, context) == null;

  bool get showError {
    if (forcedValidation && !isValid) {
      return true;
    }
    switch (widget.autovalidateMode) {
      case AutovalidateMode.always:
        return !isValid;
      case AutovalidateMode.onUserInteraction:
        return !isValid && hadFirstFocus;
      case AutovalidateMode.disabled:
        return false;
    }
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(textEditingControllerListener);
  }

  @override
  void dispose() {
    controller
      ..removeListener(textEditingControllerListener)
      ..dispose();
    super.dispose();
  }

  void focusNodeListener() {
    setState(() {
      if (!hasFocus) {
        hadFirstFocus = true;
      }
    });
  }

  void textEditingControllerListener() {
    setState(() => hasText = controller.text.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            autocorrect: widget.autocorrect,
            controller: controller,
            decoration: AppDecorations.input
                .standard(
                  isValid: !showError || isValid,
                  labelText: widget.labelText,
                )
                .copyWith(
                  suffixIcon: widget.obscureText
                      ? Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 6.0,
                            ),
                            child: IntrinsicWidth(
                              child: _buildShowObsureTextButton(),
                            ),
                          ),
                        )
                      : null,
                ),
            inputFormatters: widget.inputFormatters,
            keyboardType: widget.keyboardType,
            obscureText: obscureText,
            onChanged: widget.onChanged,
            style: AppTextStyles.h6().copyWith(
              fontWeight: FontWeight.normal,
            ),
            expands: widget.expands,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            validator: (text) {
              setState(
                () => forcedValidation = true,
              );
              return widget.validator?.call(text, context);
            },
          ),
          _CustomTextFieldError(
            error: showError
                ? widget.validator?.call(controller.text, context)
                : null,
          ),
        ],
      );

  Widget _buildShowObsureTextButton() => CustomButton(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        onPressed: () => setState(
          () => obscureText = !obscureText,
        ),
        padding: EdgeInsets.zero,
        child: AnimatedSwitcher(
          duration: AppConstants.animation.defaultDuration,
          child: showError
              ? obscureText
                  ? const Icon(
                      Icons.remove_red_eye_outlined,
                      key: ValueKey<int>(0),
                      color: AppColors.red,
                    )
                  : const Icon(
                      Icons.remove_red_eye,
                      key: ValueKey<int>(1),
                      color: AppColors.red,
                    )
              : obscureText
                  ? const Icon(
                      Icons.remove_red_eye_outlined,
                      key: ValueKey<int>(2),
                      color: AppColors.black,
                    )
                  : const Icon(
                      Icons.remove_red_eye,
                      key: ValueKey<int>(3),
                      color: AppColors.black,
                    ),
        ),
      );
}
