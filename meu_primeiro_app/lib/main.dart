import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Frases do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frases = [
    'Os problemas são oportunidades para se mostrar o que sabe. (Duke Ellington)',
    'Nossos fracassos, às vezes, são mais frutíferos do que os êxitos. (Henry Ford)',
    'Tente de novo. Fracasse de novo. Mas fracasse melhor. (Samuel Beckett)',
    'É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo. (Sócrates)'
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(4);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pressione o botão para gerar uma frase',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.cached_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
