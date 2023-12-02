import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/styles.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Goals ',
          style: Styles.textStyle16,
        ),
        const SizedBox(height: 20),
        buildGoalsItem(title: 'Planning stage '),
        buildGoalsItem(title: 'Development '),
        buildGoalsItem(title: 'Execution phase'),
        buildGoalsItem(title: 'New way of living '),
      ],
    );
  }

  Widget buildGoalsItem({required String title}) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/check.svg'),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: Styles.textStyle14,
              ),
            )
          ],
        ),
      );
}
