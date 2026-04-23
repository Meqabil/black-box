import 'package:black_box/core/constants/images.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key,this.link});
  final String? link;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: CircleAvatar(radius: 60, backgroundImage: (link == '' || link == null) ? AssetImage(AppImages.defaultOwnerImage) : NetworkImage("${AppLink.rootStorage}/$link")),
    );
  }
}
