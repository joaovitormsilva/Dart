import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  int change = 1;
  bool _maior = true;
  void _animateContainer() {
    setState(() {
      if (change % 2 != 0) {
        _width = 200;
        _height = 200;
        _color = Colors.red;
        change++;
      } else {
        _width = 100;
        _height = 100;
        _color = Colors.blue;
        change++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container Example'),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.purple, Colors.transparent],
                    stops: [_maior ? 0.2 : 0.5, 1])),
            duration: Duration(milliseconds: 250),
            width: _maior ? 100 : 500,
            child: Image.network(
                "https://assets.pokemon.com/assets/cms2/img/pokedex/full/039.png"),
          ),
          TextButton(
              onPressed: () => setState(() {
                    _maior = !_maior;
                  }),
              child: Icon(Icons.start))
        ],
      ),
    );
  }
}
