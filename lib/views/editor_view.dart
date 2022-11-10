import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter/material.dart';

class EditorView extends StatefulWidget {
  const EditorView({super.key});

  @override
  State<EditorView> createState() => _EditorViewState();
}

class _EditorViewState extends State<EditorView> {

  late final CodeController controller;

  @override
  void initState() {
    super.initState();

    controller = CodeController(
      stringMap: {
        "SELECT": const TextStyle(color: m.Colors.red)
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: CodeField(
              wrap: true,
              controller: controller,
            ),
          ),
          Expanded(
            child: ListView(),
            // child: GridView.builder(
            //   gridDelegate: gridDelegate, 
            //   itemBuilder: itemBuilder
            // ),
          )
        ],
      ),
    );
  }
}