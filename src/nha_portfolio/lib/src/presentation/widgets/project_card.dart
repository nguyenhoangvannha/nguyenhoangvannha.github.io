import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final fontSize = 16.sp;
    return Card.outlined(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.images.projectCover.image(
            height: 120,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp,
                  ),
                ),
                Text(
                  project.description,
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      context.l10n.techStack,
                      style: TextStyle(
                        fontSize: fontSize,
                      ),
                    ),
                    Text(
                      project.techStack,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: fontSize,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textButton(context, context.l10n.livePreview,
                        Assets.icons.akarIconsLinkChain.provider()),
                    textButton(context, context.l10n.viewCode,
                        Assets.icons.github.provider()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textButton(BuildContext context,
      String text,
      ImageProvider image,) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          ImageIcon(
            image,
            size: 12.w,
          ),
          Text(text),
        ],
      ),
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 12.sp,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
