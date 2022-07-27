part of '../projects_page.dart';

class _ProjectsHeader extends StatelessWidget {
  const _ProjectsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.padding.bigValue,
        ),
        color: AppColors.black,
        child: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 800.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 128.0,
                ),
                Text(
                  IntlUtil.translate('Your projects'),
                  style: AppTextStyles.h2().copyWith(
                    color: AppColors.white,
                  ),
                ),
                SizedBox(
                  height: AppDimensions.padding.defaultValue,
                ),
                Text(
                  IntlUtil.translate(
                    'Take advantage of the projects and tools',
                  ),
                  style: AppTextStyles.text1().copyWith(
                    color: AppColors.white,
                  ),
                ),
                const SizedBox(
                  height: 128.0,
                ),
              ],
            ),
          ),
        ),
      );
}
