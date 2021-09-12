import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JapanPage extends StatelessWidget {
  const JapanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> mycontroller =
        List.generate(6, (index) => new TextEditingController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Get.defaultDialog(
            title: 'Form novel jepang',
            middleText: '',
            confirm: TextButton(onPressed: () {}, child: Text("Save")),
            cancel: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Cancle")),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: mycontroller[0],
                    decoration: InputDecoration(labelText: 'name'),
                  ),
                  TextField(
                    controller: mycontroller[1],
                    decoration: InputDecoration(labelText: 'description'),
                  ),
                  TextField(
                    controller: mycontroller[2],
                    decoration: InputDecoration(labelText: 'genre'),
                  ),
                  TextField(
                    controller: mycontroller[3],
                    decoration: InputDecoration(labelText: 'status'),
                  ),
                  TextField(
                    controller: mycontroller[4],
                    decoration: InputDecoration(labelText: 'Current Chapter'),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
