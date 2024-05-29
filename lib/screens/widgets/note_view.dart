import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key, required this.note, required this.index});

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: const TextStyle(fontSize: 26),
            ),
            const SizedBox(height: 10),
            Text(
              note.body,
              style: const TextStyle(fontSize: 26),
            ),
          ],
        ),
      ),
    );
  }
}
