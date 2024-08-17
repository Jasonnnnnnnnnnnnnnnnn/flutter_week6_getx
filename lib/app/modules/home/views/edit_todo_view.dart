import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_getx/app/data/todo.dart';
import 'package:test_getx/app/modules/home/controllers/home_controller.dart';
import 'package:test_getx/app/modules/home/views/home_view.dart';

class EditTodoView extends StatelessWidget {
  final int? index;
  final Todo? todo;
  final _formKey = GlobalKey<FormState>();
  final HomeController controller = Get.find();
  EditTodoView({this.index, this.todo, Key? key}) : super(key: key) {
    if (this.todo != null) {
      controller.setEditTodo(todo!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (this.todo != null) ? Text('Edit Todo') : Text('Add New Todo'),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                  controller: controller.titleController,
                  decoration: InputDecoration(labelText: 'Title'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  }),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                  controller: controller.descriptionController,
                  decoration: InputDecoration(labelText: 'Description'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  }),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()) {
                      if(todo==null) {
                        controller.addNewTodo();
                      } else {
                        controller.editTodo(index!);
                      }
                    }
                    Get.back();
                  },
                  child: (this.todo != null) ? Text('Edit') : Text('Add New'))
            ],
          )),
    );
  }
}
