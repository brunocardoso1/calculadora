import 'package:flutter/material.dart';
import 'screens/calculator.dart';

void main() {
  runApp(Calculator());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define o tema do aplicativo
        primaryColor: Colors.purple[800],
        accentColor: Colors.orange[600],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.orange[300],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Pagina(),
    );
  }
}

class Pagina extends StatelessWidget {
  const Pagina({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora v1.0"),
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Qual primeiro valor?'),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Qual segundo valor?'),
            ),
            Center(child: Text("O total é"))
          ],
        ));
  }
}
