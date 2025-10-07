import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({super.key});

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              showAboutDialog(
                  context: context,
                  applicationIcon: FlutterLogo(),
                  applicationLegalese: "Legalese Information ...",
                  applicationName: "Flutter Mobile App",
                  applicationVersion: "2.2"

              );
            } ,
            child: Text('Open Dialog')
        ),
      ),
    );
  }
}
