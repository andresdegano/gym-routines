import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class RoutinesList extends StatelessWidget {
  final List<dynamic> list;
  const RoutinesList({super.key, required this.list});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Accordion(
          paddingListHorizontal: 0,
          paddingListTop: 0,
          paddingListBottom: 0,
          contentBackgroundColor: Colors.black54,
          headerBackgroundColor: Colors.black12,
          children: [
            for (var i in list)
              AccordionSection(
                headerPadding: const EdgeInsets.all(8),
                header: Text(i['name'].toString()),
                content: const Text('content'),
              )
          ],
        ),
      ],
    ));
  }
}
