// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scribe/view/widgets/my_note_textfields.dart';

class NewNotePage extends StatefulWidget {
  const NewNotePage({super.key});

  @override
  State<NewNotePage> createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        title: Text("New note"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.done))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              MyNoteFields(
                controller: titleController,
                hintText: 'Title',
                hintStyle: TextStyle(fontSize: 35),
                textStyle: TextStyle(fontSize: 35),
              ),
              MyNoteFields(
                controller: contentController,
                hintText: 'Content',
                hintStyle: TextStyle(fontSize: 20),
                textStyle: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
