import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  final pdfLink =
      "https://drive.google.com/file/d/1XtQLWi1j0I6Yv7uB5UvGEELlHXLnNhjW/view?usp=sharing";

  final pdfFile = "assets/resume/nha_flutter_resume.pdf";

  int page = 1;

  @override
  Widget build(BuildContext context) {
    final useViewPitch = defaultTargetPlatform != TargetPlatform.windows;
    final pdfController = PdfController(
      document: PdfDocument.openAsset(pdfFile),
    );

    final pdfPinchController = PdfControllerPinch(
      document: PdfDocument.openAsset(pdfFile),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: buildPdfView(
            useViewPitch,
            pdfController,
            pdfPinchController,
          ),
        ),
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
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.download_outlined),
              selectedIcon: const Icon(Icons.download),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share_outlined),
              selectedIcon: const Icon(Icons.share),
            ),
          ],
        )
      ],
    );
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
