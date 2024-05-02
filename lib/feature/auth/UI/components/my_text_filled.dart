import 'package:flutter/material.dart';

class MyTextFromField extends StatelessWidget {
  final TextEditingController controller;

  const MyTextFromField({
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(14)),
          ),
        ),
      ),
    );
  }
}
