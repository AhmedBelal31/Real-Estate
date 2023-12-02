import 'package:flutter/material.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/models/recommendation.dart';
import '../../../../../../core/utils/styles.dart';

class RecommendationsCard extends StatelessWidget {
  const RecommendationsCard({super.key, required this.recommendations});

  final Recommendation recommendations;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(recommendations.image!),
              ),
              title: Text(
                recommendations.name!,
                style: Styles.textStyleWhite14,
              ),
              subtitle: Text(
                recommendations.source!,
                style: Styles.textStyle14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              recommendations.text!,
              style: Styles.textStyle14.copyWith(height: 1.5),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ),
        ],
      ),
    );
  }
}
