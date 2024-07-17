import 'package:demo_application/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class CreateNotes extends StatefulWidget {

  @override
  State<CreateNotes> createState() => _CreateNotesState();
}

class _CreateNotesState extends State<CreateNotes> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("Hello World")
     );
  }
}
