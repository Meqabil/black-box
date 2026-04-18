import 'package:flutter/material.dart';

class SearchItems extends StatelessWidget {
  const SearchItems({super.key,required this.searchController,required this.hint});
  final TextEditingController searchController;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.sizeOf(context).width - 80,
      decoration: BoxDecoration(
        color: const Color(0xFF052224),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Search",
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: searchController,

                textAlign: TextAlign.right,
                decoration: InputDecoration(
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
