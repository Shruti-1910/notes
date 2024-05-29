import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/screens/create_note.dart';
import 'package:notes/screens/widgets/note_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Note> Notes = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
      ),
      body: ListView.builder(
        itemCount: Notes.length,
        itemBuilder: (context, index) {
          return NoteCard(note: Notes[index], index: index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CreateNote(
                    onNewNoteCreated: onNewNoteCreated,
                  )));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void onNewNoteCreated(Note note) {
    Notes.add(note);
    setState(() {});
  }

  void onNewNoteDeleted(int index) {
    Notes.removeAt(index);
    setState(() {});
  }
}
