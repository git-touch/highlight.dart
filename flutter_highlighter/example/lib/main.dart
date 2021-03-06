import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/theme_map.dart';
import 'package:url_launcher/url_launcher.dart';
import 'example_map.dart';

void main() => runApp(MyApp());

final title = 'Flutter Highlight Gallery';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String language = 'dart';
  String theme = 'a11y-dark';

  Widget _buildMenuContent(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(children: <Widget>[
        Text(text, style: TextStyle(fontSize: 16)),
        Icon(Icons.arrow_drop_down)
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          PopupMenuButton(
            child: _buildMenuContent(language),
            itemBuilder: (context) {
              return exampleMap.keys.map((key) {
                return CheckedPopupMenuItem(
                  value: key,
                  child: Text(key),
                  checked: language == key,
                );
              }).toList();
            },
            onSelected: (dynamic selected) {
              if (selected != null) {
                setState(() {
                  language = selected;
                });
              }
            },
          ),
          PopupMenuButton<String>(
            child: _buildMenuContent(theme),
            itemBuilder: (context) {
              return themeMap.keys.map((key) {
                return CheckedPopupMenuItem(
                  value: key,
                  child: Text(key),
                  checked: theme == key,
                );
              }).toList();
            },
            onSelected: (selected) {
              if (selected != null) {
                setState(() {
                  theme = selected;
                });
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.code),
            tooltip: 'Source Code',
            onPressed: () {
              launch('https://github.com/pd4d10/highlight');
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HighlightView(
              exampleMap[language]!,
              language: language,
              theme: themeMap[theme]!,
              padding: EdgeInsets.all(12),
              textStyle: TextStyle(
                  fontFamily:
                      'SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace'),
            )
          ],
        ),
      ),
    );
  }
}
