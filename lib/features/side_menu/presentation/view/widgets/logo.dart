import 'package:flutter/material.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(

          children: [
            const Spacer(flex: 2),
            Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
            const Spacer(),
            const Text('Real Estate ', style: Styles.textStyleWhite14),
            const SizedBox(height: 5),
            Text(
              'Modern home with \n great interior design',
              style: Styles.textStyle14
                  .copyWith(height: 1.5, fontWeight: FontWeight.w200),
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
