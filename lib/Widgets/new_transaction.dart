import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;

  NewTransaction(this.addTx, addNewSpendingVisibility);
  @override
  Widget build(BuildContext context) {
    // late String titleText;
    // late String priceText;
    final titleController = TextEditingController();
    final priceController = TextEditingController();

    void submitData() {
      if (titleController.text != "" || priceController.text != "") {
        addTx(titleController.text, double.parse(priceController.text));
      } else {}
    }

    bool addVisibility = false;
    bool graphVisibility = true;

    return Card(
      child: Container(
        width: double.infinity,
        height: 200,

        // ignore: sort_child_properties_last
        child: Stack(
          children: [
            Visibility(
              visible: addVisibility,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  controller: titleController,
                  textInputAction: TextInputAction.next,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Price '),
                  controller: priceController,
                  keyboardType: TextInputType.numberWithOptions(),
                  textInputAction: TextInputAction.done,
                  onEditingComplete: submitData,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(
                        r'^\d+\.?\d{0,2}')), //to enter the num with 2 decimal after the point
                  ],
                ),
                RaisedButton(
                  child: Text('Add Transaction'),
                  textColor: Colors.purple,
                  onPressed: submitData,
                )
              ]),
            ),
            Visibility(
              visible: graphVisibility,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 125,
                          width: 22,
                          child: Card(
                            child: Text(''),
                          ),
                        ),
                        Text('Sun'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 125,
                          width: 22,
                          child: Card(
                            child: Text(''),
                          ),
                        ),
                        Text('Mon'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 125,
                          width: 22,
                          child: Card(
                            child: Text(''),
                          ),
                        ),
                        Text('Tue'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 125,
                          width: 22,
                          child: Card(
                            child: Text(''),
                          ),
                        ),
                        Text('Wed'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 125,
                          width: 22,
                          child: Card(
                            child: Text(''),
                          ),
                        ),
                        Text('Thu'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 125,
                          width: 22,
                          child: Card(
                            child: Text(''),
                          ),
                        ),
                        Text('Fri'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 125,
                          width: 22,
                          child: Card(
                            child: Text(''),
                          ),
                        ),
                        Text('Sat'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
