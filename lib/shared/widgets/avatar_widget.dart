import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mate_technical_test/data/avatar_data.dart';

class AvatarWidget extends StatelessWidget {
  final int index;
  final double size;
  final bool hasBorder;
  final bool hasNoise;
  final List<String> images;
  const AvatarWidget({
    super.key,
    required this.index,
    required this.size,
    required this.hasBorder,
    this.hasNoise = false,
    this.images = avatarImagesPaths,
  });

  @override
  Widget build(BuildContext context) {
    final String path = images[index % images.length];
    final Widget avatar = ClipOval(
      child: Image.asset(
        path,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
    return _buildAvatar(
      child: hasNoise
          ? Stack(
              fit: StackFit.expand,
              children: [
                avatar,
                ClipOval(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                    child: Container(color: Colors.transparent),
                  ),
                ),
                ClipOval(
                  child: Opacity(
                    opacity: 0.2,
                    child: Image.asset(
                      'assets/img/noise-texture.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          : avatar,
    );
  }

  Widget _buildAvatar({Widget? child}) {
    return Container(
      width: size + (hasBorder ? 4 : 0),
      height: size + (hasBorder ? 4 : 0),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: hasBorder ? Border.all(color: Colors.white, width: 1) : null,
      ),
      child: child
    );
  }
}
