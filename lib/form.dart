import 'package:flutter/material.dart';
import 'package:merchant_dynamic_landing_page/subcategory.dart';

typedef OnDelete();

class SubcategoryForm extends StatefulWidget {

  final Subcategory subcategory;
  final state = _SubcategoryFormState();
  final OnDelete onDelete;

  SubcategoryForm({Key key, this.subcategory, this.onDelete}) : super(key: key);

  @override
  _SubcategoryFormState createState() => state;

  bool isValid() => state.validate();
}

class _SubcategoryFormState extends State<SubcategoryForm> {

  final form = GlobalKey <FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Card(
            child: Form(
              key: form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  AppBar(
                    leading: Icon(
                        Icons.keyboard_arrow_down),
                    title: Text('Subategory'),
                    centerTitle: true,
                    actions: <Widget> [
                      IconButton(icon: Icon(Icons.delete),
                          onPressed: widget.onDelete,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: widget.subcategory.name,
                      onSaved: (val) => widget.subcategory.name = val,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(
                              20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blue)),
                          labelText: 'Name',
                          hintText: 'Name'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      initialValue: widget.subcategory.description,
                      onSaved: (val) => widget.subcategory.description = val,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(
                              20.0, 10.0, 20.0, 10.0),
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.blue)),
                          labelText: 'Description',
                          hintText: 'Description'
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

 bool validate(){
    var valid = form.currentState.validate();
    if (valid)  form.currentState.save();
    return valid;
  }

}
