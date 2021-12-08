import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todoapp/create_todo_view.dart';

class Homeview extends StatelessWidget {
  const Homeview({Key? key, required String title}) : super(key: key);
//all things being,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.facc1-1.fna.fbcdn.net/v/t39.30808-6/p640x640/243457691_1311598725930824_4281047095342374971_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=265b2d&_nc_eui2=AeFHCep5YE008TSFU5BklagobTBxtNeiY_9tMHG016Jj_zXszRI-5MwaoiLCwbqH5Q6yHIv7GDoXKXUDiNAGErqk&_nc_ohc=qxUOBOnvRf8AX9FVww2&_nc_ht=scontent.facc1-1.fna&oh=863757105ebbdf479e82ef8b7f9b8386&oe=61B2EB76"),
              ),
            ),
            Text("My Task"),
          ],
        ),
        actions: const [Icon(Icons.filter_list), Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(child: TodoWidget()),
            ),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
            Card(child: TodoWidget()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CreateTodo();
          }));
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        //this is the card at the bottom HOMEPAGE showing
        //the completed task and the number of completed task
        child: InkWell(
          onTap: () {
            showBarModalBottomSheet(
                context: (context),
                builder: (context) {
                  return TodoWidget();
                });
          },
          child: Card(
            color: Colors.blue[100],
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.check_circle_outline_rounded),
                  ),
                  Text("Completed"),
                  Icon(Icons.arrow_drop_down),
                  Spacer(),
                  Text(
                    "25",
                    style: TextStyle(color: Colors.blue, fontSize: 25),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.check_circle_outline),
      title: Text(
        "Plan Trip to Finland",
        style: TextStyle(color: Colors.cyan),
      ),
      subtitle: Text("The family trip to Finland next Summer"),
      trailing: Column(
        children: [
          Icon(
            Icons.alarm,
            color: Colors.green,
          ),
          Text("Yesterday")
        ],
      ),
    );
  }
}
