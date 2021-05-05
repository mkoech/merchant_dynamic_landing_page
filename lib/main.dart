import 'package:flutter/material.dart';
import 'package:merchant_dynamic_landing_page/dynamic_form.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Category',
      home: DynamicForm(),

    );
  }
}
