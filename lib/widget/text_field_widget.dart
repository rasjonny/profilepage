import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      this.maxLines = 1,
      required this.label,
      required this.text,
      required this.onChanged});
  final int maxLines;
  final String label;
  final String text;
  final ValueChanged<String> onChanged;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController(text: widget.text);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          controller: controller,
        )
      ],
    );
  }
}
