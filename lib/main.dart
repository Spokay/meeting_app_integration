import 'package:meeting_app_integration/dashboard.dart';
import 'package:meeting_app_integration/profil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          primary: Color(0xFF3573ac),
          secondary: Color(0xFF73cbab),
          surface: Color(0xFF3573ac),
          background: Colors.white,
          error: Color(0xFF3573ac),
          onPrimary: Color(0xFF3573ac),
          onSecondary: Color(0xFF3573ac),
          onSurface: Color(0xFF3573ac),
          onBackground: Color(0xFF3573ac),
          onError: Color(0xFF3573ac),
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: 'M PLUS Rounded 1c'
          ),
          bodySmall: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              fontFamily: 'M PLUS Rounded 1c'
          ),
        ),
      ),
      home: const ProfilComponent(),
    );
  }
}
/*

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.alarm, color: Colors.white),
        centerTitle: false,
        backgroundColor: const Color.fromRGBO(46, 157, 243, 1),
        title: Text(widget.title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementCounter,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(46, 157, 243, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                    )
                  ),
                  child:  const Icon(Icons.remove, color: Colors.white),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  child: Text(
                    '$_counter',
                    style: const TextStyle(color: Color.fromRGBO(42, 199, 194, 1), fontSize: 50)
                  ),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(46, 157, 243, 1))
                  ),
                  child:  const Icon(Icons.add, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
*/
