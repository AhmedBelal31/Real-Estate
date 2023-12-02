import 'package:flutter/material.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/models/projects.dart';
import '../../../../../../core/utils/styles.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.white.withOpacity(.4),
              blurRadius: 7,
              offset: const Offset(0, 1))
        ],
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              child: Image.asset(
                project.image!,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              project.title!,
              style: Styles.textStyleWhite14,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                project.description!,
                style: Styles.textStyle14,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'More details >',
              style: Styles.textStyle14.copyWith(color: kPrimaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
