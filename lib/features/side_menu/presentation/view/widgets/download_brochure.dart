import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';

class DownloadBrochure extends StatelessWidget {
  const DownloadBrochure({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/download.svg'),
            const SizedBox(width: 10),
            const Text(
              'Download Brochure',
              style: Styles.textStyle14,
            )
          ],
        ),
      ),
    );
  }
}
