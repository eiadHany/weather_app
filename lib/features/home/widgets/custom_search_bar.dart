import 'package:flutter/material.dart';
import 'package:weather/core/utils/app_text_style.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Search a City',
        hintStyle: AppTexStyle.textStyleKawa16
            .copyWith(color: Colors.white.withOpacity(.5)),
        suffixIcon: const Icon(Icons.search),
        suffixIconColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
