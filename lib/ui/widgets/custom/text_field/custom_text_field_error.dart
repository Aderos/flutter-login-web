part of 'custom_text_field.dart';

class _CustomTextFieldError extends StatefulWidget {
  const _CustomTextFieldError({
    required this.error,
    Key? key,
  }) : super(key: key);

  final String? error;

  @override
  State<_CustomTextFieldError> createState() => _CustomTextFieldErrorState();
}

class _CustomTextFieldErrorState extends State<_CustomTextFieldError> {
  late String? _lastError = widget.error;

  @override
  void didUpdateWidget(covariant _CustomTextFieldError oldWidget) {
    if (oldWidget.error != widget.error) {
      _lastError = oldWidget.error;
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => AnimatedExpand(
        expand: widget.error != null,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 6.0,
            left: 12.0,
          ),
          child: AnimatedText(
            text: widget.error ?? _lastError ?? '',
            style: AppTextStyles.caption2().copyWith(
              color: AppColors.red,
            ),
          ),
        ),
      );
}
