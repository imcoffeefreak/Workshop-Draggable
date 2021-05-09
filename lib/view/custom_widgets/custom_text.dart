import 'package:flutter/src/widgets/framework.dart';
import 'package:workshop_application/handler/widget_mixins/widget_mixins.dart';
import 'package:flutter/material.dart';
class CustomText with WidgetProperty {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello world',
      style: TextStyle(
        fontSize: 20,
        fontWeight:  FontWeight.bold,
      ),
    );
  }

  @override
  String get name => 'Text';
  
}
