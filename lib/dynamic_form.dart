import 'package:flutter/material.dart';
import 'package:merchant_dynamic_landing_page/form.dart';
import 'package:merchant_dynamic_landing_page/subcategory.dart';

class DynamicForm extends StatefulWidget {
  @override
  _DynamicFormState createState() => _DynamicFormState();
}

class _DynamicFormState extends State<DynamicForm> {
  List <Subcategory> subcategories = [];
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
      ),
      body:
      subcategories.length <= 0 ? Center():
          ListView.builder(
            itemCount: subcategories.length,
            itemBuilder: (_, i) => SubcategoryForm( subcategory: subcategories[i],
            onDelete: () => onDelete(i),),
          ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: onAddForm,
        ),


    );
  }
  void onDelete( int index) {
    setState(() {
      subcategories.removeAt(index);
    });
  }
  void onAddForm(){
    setState(() {
      subcategories.add(Subcategory());
    });
  }

}
