import 'package:flutter/material.dart';

class InputPage extends StatefulWidget{
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
          ),
        ),

        centerTitle: true,
      ),
      body: const Center(
        child: Text(
            "Body Text"
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),
    );
  }
}
