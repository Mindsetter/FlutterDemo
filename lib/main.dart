import 'package:demo_2/apps_screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const MyHomePage()
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           debugPrint("Click Fab");
        },
        child: const Icon(Icons.add),
        tooltip: "Add More Buttons",
      ),
    );
  }
}


Widget getListView() {

  var listView = ListView(
    children: const [
      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),

      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),

      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),
      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),
      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),
      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),
      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),
      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),
      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),
      Card(child: ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beatiful View"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ),



    ],
  );
  return listView;
}