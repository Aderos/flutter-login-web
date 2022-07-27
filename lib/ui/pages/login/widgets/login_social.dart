part of '../login_page.dart';

class _LoginSocial extends StatelessWidget {
  const _LoginSocial({
    required this.onFacebookPressed,
    required this.onGooglePressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback onFacebookPressed;
  final VoidCallback onGooglePressed;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildGoogle(context),
          SizedBox(
            width: AppDimensions.padding.bigValue,
          ),
          _buildFacebook(context),
        ],
      );

  Widget _buildGoogle(BuildContext context) => SizedBox.square(
        dimension: 48.0,
        child: CustomButton(
          decoration: AppDecorations.button.circle(),
          onPressed: onGooglePressed,
          padding: EdgeInsets.all(AppDimensions.padding.smallValue),
          child: SvgPicture.asset(
            AppImages.svg.google,
            color: AppColors.white,
          ),
        ),
      );

  Widget _buildFacebook(BuildContext context) => SizedBox.square(
        dimension: 48.0,
        child: CustomButton(
          padding: EdgeInsets.zero,
          decoration: AppDecorations.button.circle(),
          onPressed: onFacebookPressed,
          child: const Center(
            child: Icon(
              Icons.facebook,
              color: AppColors.white,
              size: 36.0,
            ),
          ),
        ),
      );
}
