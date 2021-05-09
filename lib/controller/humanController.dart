import 'package:flutter/cupertino.dart';
import 'package:workshop_application/handler/model.dart';
import 'package:workshop_application/handler/widget_mixins/widget_mixins.dart';
import 'package:workshop_application/model/human.dart';

class HumanController extends ChangeNotifier {
  List<Human> human = [];
  WidgetProperty properties;

  HumanController() {
    getAllPropertiesOfHuman();
  }

  void addChild(BuildContext context, WidgetProperty widget) {
    properties = widget;
  }

  void getAllPropertiesOfHuman() {
    human.add(
      Human(
        noOfEars: 2,
        noOfEyese: 2,
        noOfNoses: 1,
        age: 18,
      ),
    );
    human.add(
      Human(
        noOfEars: 2,
        noOfEyese: 2,
        noOfNoses: 1,
        age: 50,
      ),
    );
  }
}
