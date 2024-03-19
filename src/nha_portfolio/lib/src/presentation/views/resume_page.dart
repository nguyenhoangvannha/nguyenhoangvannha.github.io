import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nha_portfolio/src/assets/generated/assets.gen.dart';
import 'package:nha_portfolio/src/helpers/consts/resume_constrants.dart';
import 'package:nha_portfolio/src/helpers/ext/context_ext.dart';
import 'package:nha_portfolio/src/presentation/widgets/pdf_page_number.dart';
import 'package:nha_portfolio/src/presentation/widgets/pdf_widget.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:share_plus/share_plus.dart';
import 'package:download/download.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  final pdfFile = Assets.resume.nguyenHoangVanNhaMobileEngineer;

  PdfViewerController? pdfViewerController;
  final onPageChangeStreamController = StreamController<int?>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PdfPageNumber(
                onPageChangeStream: onPageChangeStreamController.stream,
                pagesCount: pdfViewerController?.pages.length ?? 0,
              ),
              IconButton(
                onPressed: () {
                  pdfViewerController?.zoomDown();
                },
                icon: const Icon(Icons.zoom_out_outlined),
                selectedIcon: const Icon(Icons.zoom_out),
              ),
              IconButton(
                onPressed: () {
                  pdfViewerController?.zoomUp();
                },
                icon: const Icon(Icons.zoom_in_outlined),
                selectedIcon: const Icon(Icons.zoom_in),
              ),
              const Spacer(),
              Text(context.l10n.authorName),
              const Spacer(),
              buildDownloadButton(),
              IconButton(
                onPressed: () async {
                  await Share.share(
                    context.l10n.shareResumeMessage(ResumeConstants.resumeLink),
                    subject: context.l10n.shareResumeTitle,
                    //sharePositionOrigin: box?.localToGlobal(Offset.zero) & box?.size,
                  );
                },
                icon: const Icon(Icons.share_outlined),
                selectedIcon: const Icon(Icons.share),
              ),
            ],
          ),
        ),
        Expanded(
          child: PdfWidget(
            asset: pdfFile,
            onPageChangeStreamController: onPageChangeStreamController,
            onViewerReady: (_, controller) {
              setState(() {
                pdfViewerController = controller;
              });
            },
          ),
        ),
      ],
    );
  }

  IconButton buildDownloadButton() {
    return IconButton(
      onPressed: () {
        final resumeFileName = context.l10n.resumeFileName;
        downloadResume(resumeFileName);
      },
      icon: const Icon(Icons.download_outlined),
      selectedIcon: const Icon(Icons.download),
    );
  }

  void downloadResume(String resumeFileName) async {
    // final data2 = await XFile(pdfFile).openRead().first;
    // final stream2 = Stream.fromIterable(data2);
    final stream = await readAssetAsStream(pdfFile);
    download(stream, resumeFileName);
  }

  Future<Stream<int>> readAssetAsStream(String assetPath) async {
    ByteData data = await rootBundle.load(assetPath);
    List<int> bytes = data.buffer.asUint8List();
    final controller = StreamController<int>();

    // Add each byte to the stream
    for (int byte in bytes) {
      controller.add(byte);
    }

    controller.close();
    return controller.stream;
  }
}
