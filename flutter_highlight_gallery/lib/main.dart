import 'package:flutter_web/material.dart';
import 'flutter_highlight.dart';
import 'all_styles.dart';

void main() => runApp(MyApp());

var code = r'''class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear =>
      launchDate?.year; // read-only non-final property

  // Method.
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years =
          DateTime.now().difference(launchDate).inDays ~/
              365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
''';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String theme = 'github';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.style),
            onPressed: () async {
              var selected = await showMenu(
                  context: context,
                  items: allStyles.keys.map((key) {
                    return PopupMenuItem(value: key, child: Text(key));
                  }).toList());
              setState(() {
                theme = selected;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Highlighter(code, language: 'dart', style: allStyles[theme])
          ],
        ),
      ),
    );
  }
}
