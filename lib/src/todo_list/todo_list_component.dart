import 'dart:async';
import 'dart:math';
import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'todo_list_service.dart';

@Component(
  selector: 'todo-list',
  styleUrls: ['todo_list_component.css'],
  templateUrl: 'todo_list_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(TodoListService)],
)
class TodoListComponent implements OnInit {
  final TodoListService todoListService;

  List<String> items = [];
  String newTodo = '';

  TodoListComponent(this.todoListService);

  @override
  Future<Null> ngOnInit() async {
    items = await todoListService.getTodoList();
  }

  void add() {
    items.add(newTodo);
    newTodo = '';
    var random=Random();
  var number=random.nextInt(13);
   var lists=["陈瑶","朱子恒","周嘉翔","唐莉雯","张静雅","龙晶毅","朱鹏伟","戚晓颖","郑可欣","李典康","吴松二","蔡心蕊","赵世宇"];
   querySelector('#tips').text=lists[number];
  }

  /*String remove(int index) => items.removeAt(index);*/
}
