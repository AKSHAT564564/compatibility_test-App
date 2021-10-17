import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: null, child: Text('Filter Button')),
              ElevatedButton(onPressed: null, child: Text('Sort Button')),
              Container(
                child: Text('data'),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2.0),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text('User Details'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
