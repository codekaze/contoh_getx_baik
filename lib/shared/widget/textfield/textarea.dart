import 'package:contoh_getx_baik/shared/widget/textfield/textfield.dart';
import 'package:flutter/material.dart';

class ExTextArea extends StatelessWidget {
  final String id;
  final String label;
  final int maxLines;
  final String? value;

  ExTextArea({
    required this.id,
    required this.label,
    this.maxLines = 4,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ExTextField(
      id: id,
      label: label,
      maxLines: 4,
      value: value,
    );
  }
}
