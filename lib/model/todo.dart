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
        todoText: 'Email password!',
        isDone: true,
      ),
      ToDo(
        id: '02',
        todoText: 'Check Email',
        isDone: true,
      ),
      ToDo(
        id: '03',
        todoText: 'Pin: 1234',
      ),
      ToDo(
        id: '04',
        todoText: 'Duckduckgo',
      ),
      ToDo(
        id: '05',
        todoText: 'Books:',
      ),
    ];
  }
}
