import 'package:flutter/material.dart';
import '../../../../../../core/utils/models/projects.dart';
import 'project_card.dart';

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    required this.crossAxisCount,
    required this.childAspectRatio,
  });

  final int crossAxisCount;

  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) =>
          ProjectCard(project: demoProjects[index]),
      itemCount: demoProjects.length,
    );
  }
}
