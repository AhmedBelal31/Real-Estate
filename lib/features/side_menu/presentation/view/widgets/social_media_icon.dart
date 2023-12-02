import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/constants.dart';

class SocialMediaIcons extends StatefulWidget {
  const SocialMediaIcons({super.key});

  @override
  State<SocialMediaIcons> createState() => _SocialMediaIconsState();
}

class _SocialMediaIconsState extends State<SocialMediaIcons> {
  int _hoverIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          const Spacer(),
          buildSocialMediaIcon('assets/icons/linkedin.svg', 0),
          buildSocialMediaIcon('assets/icons/github.svg', 1),
          buildSocialMediaIcon('assets/icons/twitter.svg', 2),
          buildSocialMediaIcon('assets/icons/dribble.svg', 3),
          const Spacer(),
        ],
      ),
    );
  }

  Widget buildSocialMediaIcon(String iconPath, int index) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _hoverIndex = index;
        });
      },
      onExit: (_) {
        setState(() {
          _hoverIndex = -1;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          top: 10,
          bottom: 10,
        ),
        child: SvgPicture.asset(
          iconPath,
          width: _hoverIndex == index ? 30 : 20,
          colorFilter: _hoverIndex == index
              ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
              : null,
        ),
      ),
    );


  }
}
