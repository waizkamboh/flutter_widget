import 'package:flutter/material.dart';

class FilledButtonWidget extends StatefulWidget {
  const FilledButtonWidget({super.key});

  @override
  State<FilledButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<FilledButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          FilledButton(
              onPressed: null,
              child: Text('Disabled')
          ),
          SizedBox(height: 30,),
          FilledButton(
              onPressed: (){},
              child: Text('Enabled')
          ),
          SizedBox(height: 30,),
          FilledButton.icon(
            onPressed: () {},
            label: Text('Enabled'),
            icon: Icon(Icons.message),
          ),
          SizedBox(height: 30,),

          OutlinedButton(
              onPressed: null,
              child: Text('Disabled')
          ),
          SizedBox(height: 30,),
          OutlinedButton(
              onPressed: (){},
              child: Text('Enabled')
          ),
          SizedBox(height: 30,),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text('Enabled'),
            icon: Icon(Icons.message),
          ),
          SizedBox(height: 30,),

          ElevatedButton(
              onPressed: null,
              child: Text('Disabled')
          ),
          SizedBox(height: 30,),
          ElevatedButton(
              onPressed: (){},
              child: Text('Enabled')
          ),
          SizedBox(height: 30,),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text('Enabled'),
            icon: Icon(Icons.message),
          ),
          SizedBox(height: 30,),

          TextButton(
              onPressed: null,
              child: Text('Disabled')
          ),
          SizedBox(height: 30,),
          TextButton(
              onPressed: (){},
              child: Text('Enabled')
          ),
          SizedBox(height: 30,),
          TextButton.icon(
            onPressed: () {},
            label: Text('Enabled'),
            icon: Icon(Icons.message),
          ),


        ],
      ),
    );
  }
}
