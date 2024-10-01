class Todo {
  final int id;
  final String title;
  final String description;
  final DateTime date;

  Todo(
      {required this.id,
      required this.date,
      required this.description,
      required this.title});
  toMap() {
    return {'id': id, 'description': description, 'title': title, 'date': date};
  }

  fromMap(Map map) {
    return Todo(
        id: map['id'],
        date: map['date'],
        description: map['description'],
        title: map['title']);
  }
}
