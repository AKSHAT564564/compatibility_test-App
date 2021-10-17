import 'package:compatibility_test/pages/question_page.dart';
import 'package:flutter/material.dart';

class TestSelectionPage extends StatefulWidget {
  const TestSelectionPage({Key? key}) : super(key: key);

  @override
  _TestSelectionPageState createState() => _TestSelectionPageState();
}

class _TestSelectionPageState extends State<TestSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuestionPage()));
                },
                child: Text('First Test')),
            const ElevatedButton(onPressed: null, child: Text('First Test')),
            const ElevatedButton(onPressed: null, child: Text('First Test'))
          ],
        ),
      ),
    );
  }
}
