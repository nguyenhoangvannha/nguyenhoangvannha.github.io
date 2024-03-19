import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PdfPageNumber extends StatelessWidget {
  const PdfPageNumber(
      {super.key, required this.onPageChangeStream, required this.pagesCount});

  final int pagesCount;
  final Stream<int?> onPageChangeStream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int?>(
      stream: onPageChangeStream,
      builder: (
        context,
        snapshot,
      ) {
        return Text(
          '${snapshot.hasData ? snapshot.data ?? 0 : 0}/${pagesCount ?? 0}',
          style: TextStyle(fontSize: 18.sp),
        );
      },
    );
  }
}
