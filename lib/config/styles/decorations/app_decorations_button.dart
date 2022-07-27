part of 'app_decorations.dart';

class _Button {
  const _Button();

  BorderRadius get _borderRadius => BorderRadius.circular(30.0);

  BoxDecoration primary({
    bool isDisabled = false,
  }) =>
      BoxDecoration(
        border: Border.all(
          color: AppColors.black,
          width: 2.0,
        ),
        borderRadius: _borderRadius,
        color: AppColors.black,
      );

  BoxDecoration secondary({
    bool isDisabled = false,
    Color color = AppColors.black,
  }) {
    if (isDisabled) {
      return disabled();
    }
    return BoxDecoration(
      border: Border.all(
        color: color,
        width: 2.0,
      ),
      borderRadius: _borderRadius,
      color: Colors.transparent,
    );
  }

  BoxDecoration disabled() => BoxDecoration(
        border: Border.all(
          color: AppColors.black05,
          width: 2.0,
        ),
        borderRadius: _borderRadius,
        color: AppColors.black05,
      );

  BoxDecoration circle() => const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.black,
      );

  BoxDecoration rectangle() => BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
            color: AppColors.black20,
            offset: Offset(0.0, 1.0),
            spreadRadius: -1.0,
          ),
        ],
      );
}
