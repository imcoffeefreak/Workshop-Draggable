import 'package:flutter/material.dart';
import 'package:workshop_application/controller/humanController.dart';
import 'package:workshop_application/handler/widget_mixins/widget_mixins.dart';
import 'package:workshop_application/view/custom_widgets/custom_text.dart';
import 'package:workshop_application/widget_constants.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  HumanController controller = HumanController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.grey.withOpacity(0.4),
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                itemCount: component.length,
                itemBuilder: (context, index) {
                  return Draggable<WidgetProperty>(
                    data: component[index]['widget'],
                    feedback: Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                    ),
                    child: Container(
                      width: 150,
                      height: 30,
                      color: Colors.red,
                      child: Text('${component[index]["name"]}'),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: DragTarget(
                onAccept: (data) {},
                builder: (context, List<WidgetProperty> accept,
                    List<dynamic> reject) {
                  return Container(
                    width: 500,
                    height: 500,
                    color: Colors.grey.withOpacity(0.3),
                    child: (accept.isEmpty)
                        ? Container(
                            alignment: Alignment.center,
                            child: Text('Im empty'),
                          )
                        : accept.first.build(context),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
