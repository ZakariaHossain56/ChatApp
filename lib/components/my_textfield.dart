import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final FocusNode? focusNode;

  const MyTextfield({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    this.focusNode,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obscureText,     //true->the text will be shown dot.
        controller: controller,       //accessing the text.
        focusNode: focusNode,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.tertiary),
          ),
          focusedBorder: OutlineInputBorder(  //border when clicked
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,   //it will show the fillcolor
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}