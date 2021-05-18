import 'package:flutter/foundation.dart';
import 'package:todo_app/models/models.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      title: "Diskusi Mobile",
      description: '''
- Tema apps
- Judul
- Rancangan ERD
- Proposal''',
      isDone: false,
      createdTime: DateTime.now(),
    ),
    Todo(
      title: "Kuliah Visual",
      description: "Pertemuan 11",
      isDone: false,
      createdTime: DateTime.now(),
    ),
    Todo(
      title: "Cicil Laporan PKL",
      description: "Belum mulai samsek",
      isDone: false,
      createdTime: DateTime.now(),
    ),
    Todo(
      title: "Kuliah Ciri",
      description: "Paper boi kerjain",
      isDone: false,
      createdTime: DateTime.now(),
    ),
    Todo(
      title: "Tugas Pola",
      description: "",
      isDone: true,
      createdTime: DateTime.now(),
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
