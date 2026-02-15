import 'package:flutter/material.dart';

class IntrestView extends StatefulWidget {
  IntrestView({super.key});

  @override
  State<IntrestView> createState() => _IntrestViewState();
}

class _IntrestViewState extends State<IntrestView> {
  final List part = [
    {'namepart': "Tech", 'check': false},
    {'namepart': "Nature", 'check': false},
    {'namepart': "Romantic", 'check': false},
    {'namepart': "Adventure", 'check': false},
    {'namepart': "Culture", 'check': false},
    {'namepart': "Desert", 'check': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Text("Chose your Intrest", style: TextStyle(fontSize: 30)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: part.length,
              itemBuilder: (context, i) {
                return Container(
                  child: CheckboxListTile(
                    title: Text(
                      part[i]['namepart'],
                      style: TextStyle(fontSize: 20),
                    ),
                    value: part[i]['check'] as bool,
                    onChanged: (val) {
                      setState(() {
                        part[i]['check'] = val!;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 40),

            child: MaterialButton(onPressed: () {}, child: Text("NEXT")),
          ),
        ],
      ),
    );
  }
}
