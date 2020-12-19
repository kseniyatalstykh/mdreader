import 'package:flutter/material.dart';
import './navigation-drawer.dart';

class Editor extends StatefulWidget {
  @override
  EditorState createState() => EditorState();
}

class EditorState extends State<Editor> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    this._textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes', 
          style: TextStyle(
            color: Colors.white
          )
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: TextField(
          controller: _textEditingController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'INPUT TEXT'
          )
        )
      ),
      drawer: NavigationDrawer(), 
    );
  }
}
