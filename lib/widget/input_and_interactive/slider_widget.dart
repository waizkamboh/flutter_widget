import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {

  double sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 300,),
          Text('Sliders ?', style: TextStyle(fontSize: 30),),
          SizedBox(height: 30,),
          Center(
            child: Slider(
                activeColor: Colors.orangeAccent,
                thumbColor: Colors.orangeAccent,
                inactiveColor: Colors.orangeAccent.withOpacity(0.5),
                divisions: 9,
                label: "Rating",
                min: 1,
                max: 10,
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                }
            ),
          )
        ],
      ),
    );
  }
}
