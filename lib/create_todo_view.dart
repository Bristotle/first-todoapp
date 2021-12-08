import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateTodo extends StatelessWidget {
  const CreateTodo({Key? key}) : super(key: key);

  get onPressed => null;
//Here lies the added class for the create todo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CreateTodo"),
        ),
        body: ListView(children: [
          TextFormField(
            decoration: const InputDecoration(label: Text("Title")),
          ),
          const SizedBox(
            height: 70,
          ),
          TextFormField(
            decoration: const InputDecoration(label: Text("Description")),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(label: Text(" Start Date")),
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(label: Text("End Date")),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Create",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ),
        ]));
  }
}
