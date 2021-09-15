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
      List.generate(9, (index) => new TextEditingController());
  @override
  void dispose() {
    mycontroller[0].dispose();
    mycontroller[1].dispose();
    mycontroller[2].dispose();
    mycontroller[3].dispose();
    mycontroller[4].dispose();
    mycontroller[5].dispose();
    mycontroller[6].dispose();
    mycontroller[7].dispose();
    mycontroller[8].dispose();
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
            content: Container(
              height: MediaQuery.of(context).size.height - 500,
              width: MediaQuery.of(context).size.width - 150,
              child: ListView(
                children: [
                  TextField(
                    controller: mycontroller[0],
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  TextField(
                    controller: mycontroller[1],
                    decoration: InputDecoration(labelText: 'Description'),
                  ),
                  TextField(
                    controller: mycontroller[2],
                    decoration: InputDecoration(labelText: 'Gender'),
                  ),
                  TextField(
                    controller: mycontroller[3],
                    decoration: InputDecoration(labelText: 'Status'),
                  ),
                  TextField(
                    controller: mycontroller[4],
                    decoration: InputDecoration(labelText: 'Age'),
                  ),
                  TextField(
                    controller: mycontroller[5],
                    decoration: InputDecoration(labelText: 'Race'),
                  ),
                  TextField(
                    controller: mycontroller[6],
                    decoration: InputDecoration(labelText: 'Current Power'),
                  ),
                  TextField(
                    controller: mycontroller[7],
                    decoration: InputDecoration(labelText: 'Relationship'),
                  ),
                  TextField(
                    controller: mycontroller[8],
                    decoration: InputDecoration(labelText: 'Novel Name'),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
