import 'package:flutter/material.dart';
import 'package:horoscopes/src/ui/main_menu/main_menu.dart';

void main() {
  runApp(MedicineReminder());
}

class MedicineReminder extends StatefulWidget {
  @override
  _MedicineReminderState createState() => _MedicineReminderState();
}

class _MedicineReminderState extends State<MedicineReminder> {
  //GlobalBloc globalBloc;

  void initState() {
    //globalBloc = GlobalBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
        // Provider<GlobalBloc>.value(
        //   value: globalBloc,
        //   child:
        MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        fontFamily: 'Augustus',
      ),
      home: MainMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}
