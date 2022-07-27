part of '../projects_page.dart';

class _ProjectsCell extends StatelessWidget {
  const _ProjectsCell({
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
          children: [
            Text(
              IntlUtil.translate('Project'),
              style: AppTextStyles.h2().copyWith(
                fontWeight: FontWeight.normal,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Icon(Icons.chevron_right),
            ),
          ],
        ),
      );
}
