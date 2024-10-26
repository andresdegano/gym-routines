import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:gym_routine/main.dart';
import 'package:provider/provider.dart';
import 'package:gym_routine/pages/routines_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title, required this.routine});
  final String title;
  final List<dynamic> routine;
  void onNew() {
    print('apreto');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            Expanded(child: Text(title)),
            ElevatedButton(onPressed: onNew, child: const Text('Add New'))
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            for (var i in routine)
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                  child: Card(
                    color: Colors.black54,
                    shadowColor: Colors.black12,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(child: Text(i['name'])),
                          const Icon(IconData(0xe15f,
                              fontFamily: 'MaterialIcons',
                              matchTextDirection: true))
                        ],
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
