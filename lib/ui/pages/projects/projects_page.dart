import 'package:admin/config/constants/app_constants.dart';
import 'package:admin/config/styles/colors/app_colors.dart';
import 'package:admin/config/styles/decorations/app_decorations.dart';
import 'package:admin/config/styles/dimensions/app_dimensions.dart';
import 'package:admin/config/styles/text_styles/app_text_styles.dart';
import 'package:admin/extensions/context_extensions.dart';
import 'package:admin/ui/widgets/custom/custom_button.dart';
import 'package:admin/utils/intl_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

part 'widgets/projects_add.dart';
part 'widgets/projects_cell.dart';
part 'widgets/projects_header.dart';
part 'widgets/projects_list.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({
    Key? key,
  }) : super(key: key);

  static const String path = 'projects';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const _ProjectsHeader(),
              Transform.translate(
                offset: const Offset(0.0, -100.0),
                child: const _ProjectsList(),
              ),
            ],
          ),
        ),
      );
}
