import 'package:flutter/material.dart';

import '../../../../../core/constants/global.dart';

class ExpansionTileApp extends StatelessWidget {
  const ExpansionTileApp({super.key,required this.item});
  final Map<String,String> item;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: ExpansionTile(
        title: Text(item['question']!,
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface, fontSize: 14, fontWeight: FontWeight.w500)),
        trailing: Icon(Icons.keyboard_arrow_down, color: Theme.of(context).colorScheme.onSurface),
        shape: const Border(),

        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              padding: EdgeInsets.only(left: width * 0.045,right: width * 0.022,top: width * 0.022,bottom: width * 0.022),
              decoration: BoxDecoration(
                  color: const Color(0xFFdff7e2),
                  borderRadius: BorderRadius.circular(18)
              ),
              child: Text(item['answer']!,
                  style: TextStyle(color: const Color(0xFF2a0a0a), fontSize: 13)),
            ),
          ),
        ],
      ),
    );
  }
}


