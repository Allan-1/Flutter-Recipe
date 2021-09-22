import 'package:flutter/material.dart';

class Steps extends StatelessWidget {
  final List<String> steps;
  const Steps(this.steps);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(children: [
            ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(steps[index]),
            ),
            Divider()
          ]);
        },
        itemCount: steps.length,
      ),
    );
  }
}
