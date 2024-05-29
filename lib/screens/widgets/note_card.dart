import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/screens/widgets/note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note, required this.index});

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NoteView(note: note, index: index)));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                note.body,
                style: const TextStyle(
                  fontSize: 18,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
