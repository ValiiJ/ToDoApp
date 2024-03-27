class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(
        id: '01',
        todoText: '7 am to Gym',
        isDone: true,
      ),
      ToDo(
        id: '02',
        todoText: 'Foods to buy:',
        isDone: true,
      ),
      ToDo(
        id: '03',
        todoText: 'Pin: 1234',
      ),
      ToDo(
        id: '04',
        todoText: 'Daniel 50euro',
      ),
      ToDo(
        id: '05',
        todoText: 'Book: Krimi kibernetik',
      ),
    ];
  }
}
