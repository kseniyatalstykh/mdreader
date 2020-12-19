import 'package:flutter/material.dart';
import './editor.dart';

void main() {
  runApp(MarkdownReader());
}

class MarkdownReader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Markdown reader',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Editor(),
    );
  }
}

