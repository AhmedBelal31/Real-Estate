import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/styles.dart';
import '../../../../../core/utils/models/recommendation.dart';
import 'widgets/recommendations_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Client Recommendations ',
          style: Styles.textStyle20,
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 250,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => RecommendationsCard(
              recommendations: demoRecommendations[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemCount: demoRecommendations.length,
          ),
        )
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: List.generate(
        //       demoRecommendations.length,
        //       (index) => Padding(
        //         padding: const EdgeInsets.only(right: 20),
        //         child: RecommendationsCard(
        //           recommendations: demoRecommendations[index],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
