import 'package:flutter/material.dart';

class DynamicEditTextWidget extends StatelessWidget {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextFormField(
        controller: textController,
        decoration: InputDecoration(
          labelText: 'Car',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
        ),
        keyboardType: TextInputType.name,
      ),
    );
  }
}
