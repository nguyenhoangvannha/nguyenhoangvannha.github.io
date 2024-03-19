import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/domain/entity/project.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/helpers/ext/framework_ext.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project, this.onTap});

  final Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final fontSize = getValueForScreenType(
      context: context,
      mobile: 11.sp,
      tablet: 11.sp,
      desktop: 18.sp,
    ).toDouble();

    final size = getValueForScreenType(
      context: context,
      mobile: 14.w,
      tablet: 20.w,
      desktop: 32.w,
    );

    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Assets.images.projectCover.image(
            //   height: getValueForScreenType(
            //     context: context,
            //     mobile: 70.w,
            //     tablet: 90.w,
            //     desktop: 140.w,
            //   ),
            //   width: double.infinity,
            //   fit: BoxFit.fitWidth,
            // ),
            Container(
              color: context.isDark ? Colors.black : Colors.white,
              height: getValueForScreenType(
                context: context,
                mobile: 70.w,
                tablet: 90.w,
                desktop: 140.w,
              ),
              padding: EdgeInsets.all(getValueForScreenType(
                context: context,
                mobile: 8.w,
                tablet: 22.w,
                desktop: 32.w,
              )),
              alignment: Alignment.center,
              child: Row(
                children: [
                  project.framework.asset.image(
                    width: size.toDouble(),
                    height: size.toDouble(),
                    cacheHeight: size.toInt(),
                    cacheWidth: size.toInt(),
                  ),
                  SizedBox(
                    width: getValueForScreenType(
                      context: context,
                      mobile: 4,
                      tablet: 8,
                      desktop: 12,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      project.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize *
                            getValueForScreenType(
                              context: context,
                              mobile: 1.1,
                              tablet: 1.2,
                              desktop: 1.3,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(getValueForScreenType(
                  context: context,
                  mobile: 6.w,
                  tablet: 12.w,
                  desktop: 18.w,
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Row(
                    //   children: [
                    //     project.framework.asset.image(
                    //       width: size.toDouble(),
                    //       height: size.toDouble(),
                    //       cacheHeight: size.toInt(),
                    //       cacheWidth: size.toInt(),
                    //     ),
                    //     SizedBox(
                    //       width: getValueForScreenType(
                    //         context: context,
                    //         mobile: 4,
                    //         desktop: 8,
                    //       ),
                    //     ),
                    //     Flexible(
                    //       child: Text(
                    //         project.title,
                    //         maxLines: 2,
                    //         overflow: TextOverflow.ellipsis,
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w500,
                    //           fontSize: fontSize,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: getValueForScreenType(
                          context: context, mobile: 2, desktop: 6),
                    ),
                    Text(
                      project.description,
                      maxLines: getValueForScreenType(
                        context: context,
                        mobile: 2,
                        tablet: 2,
                        desktop: 4,
                      ),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                      ),
                    ),
                    SizedBox(
                      height: getValueForScreenType(
                        context: context,
                        mobile: 2,
                        desktop: 4,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              project.techStacks,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: fontSize,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textButton(
                                  context,
                                  context.l10n.demo,
                                  Assets.icons.akarIconsLinkChain.provider(),
                                  onPressed: () {
                                    launchUrl(Uri.parse(project.demoLink));
                                  },
                                  fontSize: fontSize,
                                  iconSize: size,
                                ),
                                textButton(
                                  context,
                                  context.l10n.viewCode,
                                  Assets.icons.github.provider(),
                                  onPressed: () {
                                    launchUrl(Uri.parse(project.repoLink));
                                  },
                                  iconSize: size,
                                  fontSize: fontSize,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textButton(BuildContext context, String text, ImageProvider image,
      {VoidCallback? onPressed,
      required double iconSize,
      required double fontSize}) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageIcon(
            image,
            size: iconSize *
                getValueForScreenType(
                  context: context,
                  mobile: 1,
                  tablet: 0.7,
                  desktop: 0.6,
                ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize * 1.2,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
