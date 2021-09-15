import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_character/model/japan_character.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class JapanPage extends StatefulWidget {
  const JapanPage({Key? key}) : super(key: key);

  @override
  _JapanPageState createState() => _JapanPageState();
}

class _JapanPageState extends State<JapanPage> {
  List<TextEditingController> mycontroller =
      List.generate(9, (index) => new TextEditingController());

  Future _openBox() async {
    var appDocumentDirectory =
        await pathProvider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);
    Hive.registerAdapter(JapanCharacterAdapter());
    Hive.openBox('japan');
  }

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
    return FutureBuilder(
      future: _openBox(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text(snapshot.hasError.toString());
          } else {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
            );
          }
        } else {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => Get.defaultDialog(
                  title: 'Form novel jepang',
                  middleText: '',
                  confirm: TextButton(
                      onPressed: () {
                        final japancharacter = Hive.box('japan');
                        japancharacter.add(mycontroller[0].text);
                        japancharacter.add(mycontroller[1].text);
                        japancharacter.add(mycontroller[2].text);
                        japancharacter.add(mycontroller[3].text);
                        japancharacter.add(mycontroller[4].text);
                        japancharacter.add(mycontroller[5].text);
                        japancharacter.add(mycontroller[6].text);
                        japancharacter.add(mycontroller[7].text);
                        japancharacter.add(mycontroller[8].text);
                      },
                      child: Text("Save")),
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
                          decoration:
                              InputDecoration(labelText: 'Current Power'),
                        ),
                        TextField(
                          controller: mycontroller[7],
                          decoration:
                              InputDecoration(labelText: 'Relationship'),
                        ),
                        TextField(
                          controller: mycontroller[8],
                          decoration: InputDecoration(labelText: 'Novel Name'),
                        ),
                      ],
                    ),
                  )),
            ),
            body: _listviewBuilder(),
          );
        }
      },
    );
  }

  ListView _listviewBuilder() {
    final japan = Hive.box('japan');
    return ListView.builder(
        itemCount: japan.length,
        itemBuilder: (context, index) {
          final japansechara = Hive.box('japan') as JapanCharacter;
          return ListTile(
            title: Text(japansechara.name),
          );
        });
  }
}
