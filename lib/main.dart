import 'package:flutter/material.dart';
import 'package:gym_routine/pages/home_page.dart';
import 'package:gym_routine/pages/routines_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<dynamic> routine = [
    {
      'id': 'ui2',
      'name': 'Lunes',
      'activity_groups': [
        {
          'name': 'Piernas',
          'exercises': [
            {
              'id': 'uid2',
              'name': 'Remo con mancuernas',
              'series': 3,
              'repetitions': 3,
              'description': 'on the bench',
              'observations': 'Start with 3kg'
            },
            {
              'id': 'uid2',
              'name': 'Remo sin mancuernas',
              'series': 3,
              'repetitions': 4,
              'description': 'off the bench',
              'observations': 'Start with 9kg'
            }
          ],
        },
      ]
    },
    {
      'id': 'upppp',
      'name': 'Martes',
      'activity_groups': [
        {
          'name': 'Piernas',
          'exercises': [
            {
              'id': 'uid2',
              'name': 'Remo con mancuernas',
              'series': 3,
              'repetitions': 3,
              'description': 'on the bench',
              'observations': 'Start with 3kg'
            },
            {
              'id': 'uid2',
              'name': 'Remo sin mancuernas',
              'series': 3,
              'repetitions': 4,
              'description': 'off the bench',
              'observations': 'Start with 9kg'
            }
          ],
        },
        {
          'name': 'Espalda',
          'exercises': [
            {
              'id': 'uid2',
              'name': 'Remo con mancuernas',
              'series': 3,
              'repetitions': 3,
              'description': 'on the bench',
              'observations': 'Start with 3kg'
            },
            {
              'id': 'uid2',
              'name': 'Remo sin mancuernas',
              'series': 3,
              'repetitions': 4,
              'description': 'off the bench',
              'observations': 'Start with 9kg'
            }
          ],
        },
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GYM Routines book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blueGrey, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        final arguments = settings.arguments as dynamic;
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) {
                return MyHomePage(title: 'GYM Routines book', routine: routine);
              },
            );
          case '/routine':
            return MaterialPageRoute(
              builder: (context) {
                return RoutinesList(list: arguments.routine);
              },
            );
          default:
            return null;
        }
      },
    );
  }
}
