import 'package:compatibility_test/pages/result_page.dart';
import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            leading: Text('Question No.'),
            title: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Text('Random Questions'),
            ),
          ),
          ListTile(
            leading: Text('Options'),
            title: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Column(
                children: const [
                  Text('Option 1'),
                  Text('Option 2'),
                  Text('Option 3'),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ElevatedButton(
                onPressed: null,
                child: Text('Prev'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResultPage()));
                  },
                  child: Text('Next'))
            ],
          ),
        ],
      ),
    );
  }
}
