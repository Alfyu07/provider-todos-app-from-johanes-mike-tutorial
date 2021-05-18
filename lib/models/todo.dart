part of 'models.dart';

class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {
  DateTime createdTime;
  String title;
  String id;
  String description;
  bool isDone;

  Todo({
    @required this.createdTime,
    @required this.title,
    this.id,
    this.description = '',
    this.isDone = false,
  });

  Map<String, dynamic> toJson() => {
        'createdTime': Utils.fromDateTimeToJson(createdTime),
        'title': title,
        'id': id,
        'description': description,
        'isDone': isDone,
      };

  static Todo fromJson(Map<String, dynamic> data) => Todo(
        createdTime: Utils.toDateTime(
          data['createdTime'],
        ),
        title: data['title'],
        id: data['id'],
        description: data['description'],
        isDone: data['isDone'],
      );
}
