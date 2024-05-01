import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  const MyTextFromField({super.key, required TextEditingController controller});

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
      ),
    ),
  );
}
}