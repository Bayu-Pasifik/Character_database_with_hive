import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class JapanPage extends StatefulWidget {
  const JapanPage({Key? key}) : super(key: key);

  @override
  _JapanPageState createState() => _JapanPageState();
}

class _JapanPageState extends State<JapanPage> {
  List<TextEditingController> mycontroller =
      List.generate(6, (index) => new TextEditingController());
  @override
  void dispose() {
    mycontroller[0].dispose();
    mycontroller[1].dispose();
    mycontroller[2].dispose();
    mycontroller[3].dispose();
    mycontroller[4].dispose();
    mycontroller[5].dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Hive.openBox('JNovels');
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
                style: TextButton.styleFrom(primary: Colors.red),
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
