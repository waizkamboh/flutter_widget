import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 400,
                    child: Center(
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text('Close')
                      ),
                    ),
                  );
                }
            );
          },
          child: Text('Model Bottom Sheet'),
      ),
    );
  }
}
