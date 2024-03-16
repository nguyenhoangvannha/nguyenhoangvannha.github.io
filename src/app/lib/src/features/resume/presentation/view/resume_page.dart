import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nguyenhoangvannha/src/app/helpers/extensions/build_context_extension.dart';
import 'package:nguyenhoangvannha/src/assets/generated/assets.gen.dart';
import 'package:pdfx/pdfx.dart';
import 'package:share_plus/share_plus.dart';
import 'package:download/download.dart';


class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  final pdfLink =
      "https://drive.google.com/file/d/1XtQLWi1j0I6Yv7uB5UvGEELlHXLnNhjW/view?usp=sharing";

  final bioLink = "https://nguyenhoangvannha.github.io/";

  final pdfFile = AppAssets.resume.nhaFlutterResume;

  int page = 1;

  @override
  Widget build(BuildContext context) {
    final useViewPitch = defaultTargetPlatform != TargetPlatform.windows;

    final document = PdfDocument.openAsset(pdfFile);
    final pdfController = PdfController(
      document: document,
    );

    final pdfPinchController = PdfControllerPinch(
      document: document,
    );

    final resumeFileName = context.l10n.resumeFileName;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            PdfPageNumber(
              controller: useViewPitch ? pdfPinchController : pdfController,
              builder: (_, state, page, pagesCount) => Container(
                alignment: Alignment.center,
                child: Text(
                  '$page/${pagesCount ?? 0}',
                  style: const TextStyle(fontSize: 22),
                ),
              ),
            ),
            const Spacer(),
            buildDownloadButton(resumeFileName),
            IconButton(
              onPressed: () {
                Share.share(
                  'Check out this website $bioLink',
                  subject: 'Look what he made!',
                );
              },
              icon: const Icon(Icons.share_outlined),
              selectedIcon: const Icon(Icons.share),
            ),
            IconButton(
              onPressed: () async {
                final sourceName = (await document).sourceName;
                final id = (await document).id;
                log("nha $sourceName   $id");
                await Share.shareXFiles(
                  [XFile(pdfFile, mimeType: "application/pdf")],
                  text: 'Great Resume',
                  subject: 'Look what he made!',
                );
              },
              icon: const Icon(Icons.share_outlined),
              selectedIcon: const Icon(Icons.share),
            ),
          ],
        ),
        Expanded(
          child: buildPdfView(
            useViewPitch,
            pdfController,
            pdfPinchController,
          ),
        ),
      ],
    );
  }

  IconButton buildDownloadButton(String resumeFileName) {
    return IconButton(
      onPressed: () async {
        // final data2 = await XFile(pdfFile).openRead().first;
        // final stream2 = Stream.fromIterable(data2);
        final stream = await readAssetAsStream(pdfFile);
        download(stream, resumeFileName);
      },
      icon: const Icon(Icons.download_outlined),
      selectedIcon: const Icon(Icons.download),
    );
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


  Widget buildPdfView(
    bool useViewPitch,
    PdfController pdfController,
    PdfControllerPinch pdfPinchController,
  ) {
    if (useViewPitch) {
      return PdfViewPinch(
        controller: pdfPinchController,
      );
    } else {
      return PdfView(
        controller: pdfController,
        scrollDirection: Axis.vertical,
      );
    }
  }
}
