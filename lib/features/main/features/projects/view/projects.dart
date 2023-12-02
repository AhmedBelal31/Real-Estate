import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/responsive.dart';
import 'package:real_estate_app/core/utils/styles.dart';
import 'widgets/project_grid_view.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Our Projects',
          style: Styles.textStyle20,
        ),
        const SizedBox(height: 20),
        Responsive(
          desktop: const ProjectGridView(
            crossAxisCount: 3,
            childAspectRatio: 0.85,
          ),
          tablet: ProjectGridView(
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: 0.75,
          ),
          mobileLarge: const ProjectGridView(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          mobile: const ProjectGridView(
            crossAxisCount: 1,
            childAspectRatio: 0.75,
          ),
        ),
      ],
    );
  }
}
