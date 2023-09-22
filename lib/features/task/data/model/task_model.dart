class TaskModel {
  final int? id;
  final String title;
  final String note;
  final String startTime;
  final String endTime;
  final String date;
  final int isCompleted;
  final int color;

  TaskModel({
    this.id,
    required this.title,
    required this.note,
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.isCompleted,
    required this.color,
  });

  factory TaskModel.fromJson(Map<String, dynamic> jsonData) {
    return TaskModel(
      id: jsonData['id'] ,
      title: jsonData['title'] ,
      note: jsonData['notes'],
      startTime: jsonData['startTime'],
      endTime: jsonData['endTime'],
      date: jsonData['date'],
      isCompleted: jsonData['isCompleted'],
      color: jsonData['color'],
    );
  }
}
