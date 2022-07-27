part of 'app_decorations.dart';

class _Input {
  const _Input();

  InputDecoration standard({
    required bool isValid,
    String? labelText,
  }) =>
      InputDecoration(
        border: _inputBorder(
          color: AppColors.black30,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppDimensions.padding.defaultValue,
          vertical: AppDimensions.padding.defaultValue,
        ),
        disabledBorder: _inputBorder(
          color: AppColors.black10,
        ),
        enabledBorder: _inputBorder(
          color: AppColors.black30,
        ),
        errorBorder: _inputBorder(
          color: AppColors.red,
        ),
        focusedErrorBorder: _inputBorder(
          color: AppColors.red,
        ),
        errorStyle: const TextStyle(
          inherit: false,
          fontSize: kIsWeb ? -1.0 : 0.0,
          height: kIsWeb ? -1.0 : 0.0,
        ),
        floatingLabelStyle: AppTextStyles.caption2().copyWith(
          color: isValid ? AppColors.black : AppColors.red,
        ),
        focusedBorder: _inputBorder(
          color: AppColors.black,
        ),
        hintStyle: AppTextStyles.text2().copyWith(
          color: AppColors.black30,
        ),
        labelText: labelText,
        labelStyle: AppTextStyles.text2().copyWith(
          color: AppColors.black,
        ),
      );
}

InputBorder _inputBorder({
  required Color color,
}) =>
    OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
      borderRadius: AppDimensions.radius.defaultRadius(),
    );
