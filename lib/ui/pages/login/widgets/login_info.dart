part of '../login_page.dart';

class _LoginInfo extends StatelessWidget {
  const _LoginInfo({
    required this.content,
    required this.label,
    required this.onPressed,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String content;
  final String label;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.padding.biggestValue,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              IntlUtil.translate(title),
              style: AppTextStyles.h1().copyWith(
                fontSize: 64.0,
                color: AppColors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: AppDimensions.padding.biggerValue,
            ),
            Text(
              IntlUtil.translate(content),
              style: AppTextStyles.h3().copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 64.0,
            ),
            Container(
              constraints: const BoxConstraints(
                maxWidth: 250.0,
              ),
              child: CustomButton(
                onPressed: onPressed,
                decoration: AppDecorations.button.secondary(
                  color: AppColors.white,
                ),
                child: Text(
                  IntlUtil.translate(label),
                  style: AppTextStyles.button.secondary().copyWith(
                        color: AppColors.white,
                      ),
                ),
              ),
            ),
          ],
        ),
      );
}
