import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/global.dart';
import '../../../../core/constants/images.dart';

class LoadingUserData extends StatelessWidget {
  const LoadingUserData({super.key,required this.owner});
  final OwnerEntity owner;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          padding: EdgeInsets.all(width * .045/5),
          decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: CircleAvatar(radius: width * .05*3, backgroundImage: AssetImage(AppImages.defaultOwnerImage)),
        ),
        SizedBox(height: width * .045/2,),
        Text(owner.name, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onPrimary)),
        Text("ID : ${owner.id.toString()}", style: TextStyle(color: Colors.grey, fontSize: width * .029)),
      ],
    );
  }
}
