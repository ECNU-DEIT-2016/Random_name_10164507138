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
    MaterialButtonComponent,
    NgFor,
    NgIf,
  ],
  providers: [const ClassProvider(TodoListService)],
)
class TodoListComponent implements OnInit {


  @override
  Future<Null> ngOnInit() async {
  }

  void add() {
    
    var random=Random();
    var number=random.nextInt(12);
    var lists=["陈瑶","唐莉雯","张静雅","吴松二","蔡心蕊","龙晶毅","戚晓颖","郑可欣","李典康","赵世宇","朱子恒","周嘉翔",];
   querySelector('#tips').text=lists[number];
  }

}
