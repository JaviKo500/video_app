import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post_entity.dart';

class VideoButtons extends StatelessWidget {
  final VideoPostEntity video;
  const VideoButtons({required this.video, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       _CustomIconButton(value: video.likes, iconData: Icons.favorite, colorIcon: Colors.red),
       const SizedBox(height: 20,),
       _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye_outlined, colorIcon: Colors.white),
       const SizedBox(height: 20,),
       SpinPerfect(
        infinite: true,
        duration: const Duration( seconds: 5 ),
        child: const _CustomIconButton(value: 0, iconData: Icons.play_circle_outline, colorIcon: Colors.white))
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    colorIcon,
  }): color = colorIcon ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(
            iconData,
            color: color,
          ),
          onPressed: () {},
        ),
        if ( value > 0 )
        Text(HumanFormats.humanReadableNumber(value.toDouble()))
      ],
    );
  }
}
