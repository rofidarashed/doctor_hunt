import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/feature/view/widgets/home/search_header.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SearchHeader(),
        Padding(
          padding: EdgeInsets.only(top: 126.rh, left: 20.rw, right: 20.rw),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search.....',
              hintStyle: const TextStyle(color: gray),
              prefixIcon: const Icon(Icons.search, color: gray),
              suffixIcon: const Icon(Icons.close, color: gray),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
