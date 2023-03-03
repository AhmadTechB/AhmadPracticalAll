import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project1/main.dart';

class PopUp extends StatefulWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("World")
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("ok"),
          onPressed: () {
            showDialog(context: context,
                builder: (context) {
              return Container(
                child: AlertDialog(
                  title: Text("Contract information"),
                  actions: [
                  Divider(),

                    Text("Contract information"),
                  ],
                ),
              );
            });
            },
        ),
      ),
    );
}
}


