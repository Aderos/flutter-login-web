part of '../projects_page.dart';

class _ProjectsList extends StatelessWidget {
  const _ProjectsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.padding.bigValue,
        ),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 824.0,
            ),
            child: AnimationLimiter(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 200.0,
                  maxCrossAxisExtent: 300.0,
                ),
                shrinkWrap: true,
                children: [
                  _buildAddCell(context),
                  ...List.generate(
                    2,
                    (index) => _buildCell(
                      context,
                      index: index,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _buildAddCell(BuildContext context) =>
      AnimationConfiguration.staggeredGrid(
        position: 0,
        duration: AppConstants.animation.defaultDuration * 2,
        columnCount: 3,
        child: ScaleAnimation(
          child: FadeInAnimation(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: _ProjectsAdd(
                onPressed: context.showContentUnavailable,
              ),
            ),
          ),
        ),
      );

  Widget _buildCell(
    BuildContext context, {
    required int index,
  }) =>
      AnimationConfiguration.staggeredGrid(
        position: index + 1,
        duration: AppConstants.animation.defaultDuration * 2,
        columnCount: 3,
        child: ScaleAnimation(
          child: FadeInAnimation(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: _ProjectsCell(
                onPressed: context.showContentUnavailable,
              ),
            ),
          ),
        ),
      );
}
