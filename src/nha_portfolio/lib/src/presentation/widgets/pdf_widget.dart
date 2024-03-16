import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:url_launcher/url_launcher.dart';

class PdfWidget extends StatelessWidget {
  const PdfWidget(
      {super.key,
      required this.asset,
      required this.onPageChangeStreamController,
      this.onViewerReady});

  final String asset;
  final StreamController<int?> onPageChangeStreamController;
  final PdfViewerReadyCallback? onViewerReady;

  @override
  Widget build(BuildContext context) {
    return PdfViewer.asset(
      asset,
      params: PdfViewerParams(
          linkWidgetBuilder: (context, link, size) => Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () async {
                    if (link.url != null) {
                      launchUrl(link.url!);
                    }
                  },
                  hoverColor: Colors.blue.withOpacity(0.2),
                ),
              ),
          onPageChanged: (page) {
            onPageChangeStreamController.add(page);
          },
          onViewerReady: onViewerReady,
          loadingBannerBuilder: (context, bytesDownloaded, totalBytes) {
            return Center(
              child: CircularProgressIndicator(
                value: totalBytes != null ? bytesDownloaded / totalBytes : null,
                backgroundColor: Colors.grey,
              ),
            );
          }),
    );
  }
}
