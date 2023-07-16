import 'package:boda/timer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bodapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(250, 246, 237, 0.466),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('28.10.2023', textScaleFactor: 2,)],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Alberto & Anabel',
                textScaleFactor: 5,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Tenemos el placer de invitaros a nuestro enlace, que tendra lugar el')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Text('Sabado')],
              ),
              Column(
                children: [
                  Row(
                    children: [Text('28')],
                  ),
                  Row(
                    children: [Text('octubre')],
                  ),
                  Row(
                    children: [Text('2023')],
                  )
                ],
              ),
              Column(
                children: [Text('Jaén')],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Santa Capilla de San Andrés')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('12:30h')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Posteriormente lo celebreramos en la Caseria de las Palmeras')
            ],
          ),
          TimerCountdown(
            endTime: DateTime.utc(2023, 10, 28, 12, 30, 00),
            daysDescription: 'Días',
            hoursDescription: 'Horas',
            minutesDescription: 'Minutos',
            secondsDescription: 'Segundos',
          )
        ],
      ),
    ));
  }
}
