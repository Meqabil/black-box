import 'package:black_box/features/auth/domain/entities/owner_entity.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/images.dart';

class LoadingUserData extends StatelessWidget {
  const LoadingUserData({super.key,required this.owner});
  final OwnerEntity owner;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          child: CircleAvatar(radius: 60, backgroundImage: AssetImage(AppImages.defaultOwnerImage)),
        ),
        SizedBox(height: 10,),
        Text(owner.name, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black)),
        Text("ID : ${owner.id.toString()}", style: TextStyle(color: Colors.grey, fontSize: 14)),
      ],
    );
  }
}
