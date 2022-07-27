import 'package:admin/config/router/app_router.dart';
import 'package:admin/config/styles/colors/app_colors.dart';
import 'package:admin/config/styles/decorations/app_decorations.dart';
import 'package:admin/config/styles/dimensions/app_dimensions.dart';
import 'package:admin/config/styles/images/app_images.dart';
import 'package:admin/config/styles/text_styles/app_text_styles.dart';
import 'package:admin/extensions/context_extensions.dart';
import 'package:admin/ui/widgets/custom/custom_button.dart';
import 'package:admin/ui/widgets/custom/text_field/custom_text_field.dart';
import 'package:admin/utils/intl_util.dart';
import 'package:admin/utils/validation/validation_builder.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'widgets/login_background.dart';
part 'widgets/login_info.dart';
part 'widgets/login_sign_in.dart';
part 'widgets/login_sign_up.dart';
part 'widgets/login_social.dart';

class LoginPage extends StatefulWidget implements AutoRouteWrapper {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  static const String path = 'login';

  @override
  Widget wrappedRoute(BuildContext context) => this;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(
      milliseconds: 500,
    ),
    vsync: this,
  );

  late final Animation<double> _slideX = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 1.0, curve: Curves.easeInOut),
    ),
  );
  late final Animation<double> _signUpX = Tween(
    begin: 1.0,
    end: 0.0,
  ).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 1.0, curve: Curves.easeInOut),
    ),
  );
  late final Animation<double> _signInX = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(
    CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 1.0, curve: Curves.easeInOut),
    ),
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxWidthHalf = maxWidth * .5;
    return Scaffold(
      body: Stack(
        children: [
          _LoginBackground(
            onSignInPressed: controller.reverse,
            onSignUpPressed: controller.forward,
          ),
          Positioned(
            left: AppDimensions.padding.bigValue,
            top: AppDimensions.padding.bigValue,
            child: _buildWhiteLogo(),
          ),
          AnimatedBuilder(
            animation: controller,
            builder: (_, __) => Positioned(
              bottom: 0.0,
              left: maxWidthHalf * _slideX.value,
              top: 0.0,
              child: _buildSlideContainer(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSlideContainer() {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxWidthHalf = maxWidth * .5;
    return Container(
      color: AppColors.white,
      width: maxWidthHalf,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            left: maxWidthHalf * _signUpX.value,
            right: -maxWidthHalf * _signUpX.value,
            top: 0.0,
            child: const _LoginSignUp(),
          ),
          Positioned(
            bottom: 0.0,
            left: -maxWidthHalf * _signInX.value,
            right: maxWidthHalf * _signInX.value,
            top: 0.0,
            child: const _LoginSignIn(),
          ),
          Positioned(
            left:
                AppDimensions.padding.bigValue - maxWidthHalf * _signInX.value,
            top: AppDimensions.padding.bigValue,
            child: _buildBlackLogo(),
          ),
        ],
      ),
    );
  }

  Widget _buildBlackLogo() => const Icon(
        Icons.shop,
        color: AppColors.black,
        size: 64.0,
      );

  Widget _buildWhiteLogo() => const Icon(
        Icons.shop,
        color: AppColors.white,
        size: 64.0,
      );
}
