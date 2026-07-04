import 'package:black_box/core/constants/images.dart';
import 'package:black_box/core/constants/links.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/global.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key,this.link});
  final String? link;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(width * .045/5),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary, shape: BoxShape.circle),
      child: CircleAvatar(radius: width * .152, backgroundImage: (link == '' || link == null) ? AssetImage(AppImages.defaultOwnerImage) : NetworkImage("${AppLink.rootStorage}/$link")),
    );
  }
}


//https://graduation-black-box.azurewebsites.net/storage/profile_images/g75rfhcPWDQ68E9lpGhDKXnDC3hKx6m3h5yMSYKx.jpg
//https://grad-black-box-f5esdca8dahbd5a6.germanywestcentral-01.azurewebsites.net/storage/profile_images/g75rfhcPWDQ68E9lpGhDKXnDC3hKx6m3h5yMSYKx.jpg