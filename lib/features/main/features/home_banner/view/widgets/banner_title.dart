import 'package:flutter/material.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/responsive.dart';
import '../../../../../../core/utils/styles.dart';

class BannerTitleAndContact extends StatelessWidget {
  const BannerTitleAndContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Build a great future \n for all of us !',
              style: Responsive.isDesktop(context)
                  ? Styles.textStyle50
                  : Styles.textStyle20),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
                foregroundColor: Colors.white,
                padding: Responsive.isDesktop(context)
                    ? const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
                    : const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            onPressed: () {},
            child: const Text(
              'Contact US ',
              style: Styles.textStyle18,
            ),
          ),
        ],
      ),
    );
  }
}
