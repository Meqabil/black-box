import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/constants/global.dart';

class SearchItems extends StatelessWidget {
  const SearchItems({super.key,required this.searchController,required this.hint,this.onChanged});
  final TextEditingController searchController;
  final String hint;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: width * .09,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xFF1A0505),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              AppLocalizations.of(context)!.search,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: const Color(0xFFF0FFF0),
                borderRadius: BorderRadius.circular(23),
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal:  15),
              child: TextField(
                controller: searchController,
                textAlign: TextAlign.right,
                onChanged: onChanged,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  hintText: hint,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
