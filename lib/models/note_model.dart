class Note {
  final String title;
  final String body;

  Note({required this.title, required this.body});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'body': body,
    };
  }
  
}
