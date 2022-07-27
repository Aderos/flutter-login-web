part of '../login_page.dart';

class _LoginBackground extends StatelessWidget {
  const _LoginBackground({
    required this.onSignInPressed,
    required this.onSignUpPressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback onSignInPressed;
  final VoidCallback onSignUpPressed;

  @override
  Widget build(BuildContext context) => Container(
        color: AppColors.black,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _LoginInfo(
                content: IntlUtil.translate(
                  // ignore: lines_longer_than_80_chars
                  'To keep connected with us please login with your personal info',
                ),
                label: IntlUtil.translate('Sign in'),
                onPressed: onSignInPressed,
                title: IntlUtil.translate('Welcome Back!'),
              ),
            ),
            Expanded(
              child: _LoginInfo(
                content: IntlUtil.translate(
                  'Enter your personal details and start journey with us',
                ),
                label: IntlUtil.translate('Sign up'),
                onPressed: onSignUpPressed,
                title: IntlUtil.translate('Hello, Friend!'),
              ),
            ),
          ],
        ),
      );
}
