import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "First item";
  String item2 = "Second item";
  String item3 = "Third item";
  String item4 = "4 item";

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Wrap with MaterialApp
      home: Scaffold( // Scaffold provides Material structure
        appBar: AppBar(
          title: Text('Popup Menu Example'),
        ),
        body: Material( // Wrap ListTile with Material widget
          child: ListTile(
            title: Text(title),
            trailing: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text(item2),
                  value: item2,
                ),
                PopupMenuItem(
                  child: Text(item3),
                  value: item3,
                ),
                PopupMenuItem(
                  child: Text(item4),
                  value: item4,
                )
              ],
              onSelected: (String newValue){
                setState(() {
                  title = newValue;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
