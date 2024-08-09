// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myapp/util/button_list.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      title: Text("Add New Task"),
      content: Container(
        height: 120,
        width: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            //button=save-cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonList(
                  text: "Save",
                  onPressed: onSave,
                ),
                ButtonList(
                  text: "Cancel",
                  onPressed: onCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
