import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:apiashraftest/data/models/todo.dart';
import 'package:apiashraftest/data/repositories/todo_repository.dart';

part 'todo_data_state.dart';

class TodoDataCubit extends Cubit<TodoDataState> {
  TodoDataCubit() : super(TodoDataInitial());


  final todoRepo = TodoRepository();

  Future<void> getTodoData(String userID) async {
    try {
      var list = await todoRepo.fetchTodoByUserID(userID);
      emit(TodoDataLoaded(todoList: list!));
    } catch (e) {
      emit(TodoDataError(message: e.toString()));
    }
  }
}
