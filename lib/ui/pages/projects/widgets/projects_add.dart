part of '../projects_page.dart';

class _ProjectsAdd extends StatelessWidget {
  const _ProjectsAdd({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => CustomButton(
        decoration: AppDecorations.button.rectangle(),
        onPressed: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add,
              size: 48.0,
            ),
            SizedBox(
              height: AppDimensions.padding.defaultValue,
            ),
            Text(
              IntlUtil.translate('Add project'),
              style: AppTextStyles.caption1(),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
}
