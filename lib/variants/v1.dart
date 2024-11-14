import 'package:flutter/material.dart';

class V1 extends StatefulWidget {
  @override
  State<V1> createState() => _V0State();
}

class _V0State extends State<V1> {
  double _width = 50.0;
  double _height = 50.0;
  double _radius = 0.0;

  _onChangeWidth(double value) {
    setState(() {
      _width = value;
    });
  }

  _onChangeHeight(double value) {
    setState(() {
      _height = value;
    });
  }

  _onChangeBorderRadius(double value) {
    setState(() {
      _radius = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Width: "),
              Text(_width.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Slider(value: _width, min: 10, max: 100, onChanged: _onChangeWidth),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Height: "),
              Text(_height.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Slider(value: _height, min: 10, max: 100, onChanged: _onChangeHeight),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Radius: "),
              Text(_radius.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Slider(value: _radius, min: 0, max: 100, onChanged: _onChangeBorderRadius),

          Container(
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(_radius)),
            ),
          )
        ],
      ),
    );
  }
}