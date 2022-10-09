import 'package:app_01/config/app_theme.dart';
import 'package:app_01/ui/pages/note/note_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppTheme.bgColor,
      appBar: AppBar(
        title: Text(DateFormat.MMMMEEEEd().format(DateTime.now())),
        leading: IconButton(
          icon: Icon(Icons.menu)
          ,onPressed: (){},),
      ),
      body:Column(
        children: 
        [
          NotePage(),
        ],
      ) ,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: Text("Add Note"),
        icon: Icon(Icons.add),),
    );
  }
}