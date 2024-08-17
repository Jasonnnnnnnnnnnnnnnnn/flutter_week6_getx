import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_getx/app/data/services/todo_service.dart';
import 'package:test_getx/app/data/todo.dart';

class HomeController extends GetxController {
  final TodoService todoService = Get.find();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  void setEditTodo(Todo todo){
    titleController.text = todo.title;
    descriptionController.text = todo.description;
  }

  void addNewTodo() {
    todoService
        .addTodo(Todo(title: 'New Task', description: 'Task Description'));
  }

  void toggleTodoStatus(int index) {
    todoService.toggleTodoStatus(index);
   
  }

  void removeTodoAt(int index) {
    todoService.removeTodoAt(index);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    descriptionController.dispose();
    titleController.dispose();
    super.onClose();
  }
}
