import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedContainer Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnimatedContainerDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  // State variables for animations
  bool _isExpanded = false;
  int _selectedExample = 0;

  // Example 1: Size Animation
  double _width = 100;
  double _height = 100;

  // Example 2: Color Animation
  Color _color = Colors.blue;

  // Example 3: Border Radius Animation
  double _borderRadius = 0;

  // Example 4: Combined Animation
  bool _isTransformed = false;

  void _toggleAnimation() {
    setState(() {
      _isExpanded = !_isExpanded;

      // Update different properties based on selected example
      switch (_selectedExample) {
        case 0: // Size
          _width = _isExpanded ? 250 : 100;
          _height = _isExpanded ? 250 : 100;
          break;
        case 1: // Color
          _color = _isExpanded ? Colors.red : Colors.blue;
          break;
        case 2: // Border Radius
          _borderRadius = _isExpanded ? 100 : 0;
          break;
        case 3: // Combined
          _isTransformed = !_isTransformed;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer Demo'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // Example selector
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 0, label: Text('Size')),
                ButtonSegment(value: 1, label: Text('Color')),
                ButtonSegment(value: 2, label: Text('Radius')),
                ButtonSegment(value: 3, label: Text('Combined')),
              ],
              selected: {_selectedExample},
              onSelectionChanged: (Set<int> newSelection) {
                setState(() {
                  _selectedExample = newSelection.first;
                  _isExpanded = false;
                  _width = 100;
                  _height = 100;
                  _color = Colors.blue;
                  _borderRadius = 0;
                  _isTransformed = false;
                });
              },
            ),
          ),

          // Animation display area
          Expanded(
            child: Center(
              child: _buildSelectedExample(),
            ),
          ),

          // Description
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey[200],
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _getExampleTitle(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(_getExampleDescription()),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _toggleAnimation,
        label: const Text('Animate'),
        icon: const Icon(Icons.play_arrow),
      ),
    );
  }

  Widget _buildSelectedExample() {
    switch (_selectedExample) {
      case 0:
        return _buildSizeExample();
      case 1:
        return _buildColorExample();
      case 2:
        return _buildBorderRadiusExample();
      case 3:
        return _buildCombinedExample();
      default:
        return Container();
    }
  }

  // Example 1: Size Animation
  Widget _buildSizeExample() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: _width,
      height: _height,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Icon(
          Icons.widgets,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }

  // Example 2: Color Animation
  Widget _buildColorExample() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: _color.withOpacity(0.5),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: const Center(
        child: Icon(
          Icons.palette,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }

  // Example 3: Border Radius Animation
  Widget _buildBorderRadiusExample() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: const Center(
        child: Icon(
          Icons.crop_square,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }

  // Example 4: Combined Animation
  Widget _buildCombinedExample() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      curve: Curves.elasticOut,
      width: _isTransformed ? 200 : 100,
      height: _isTransformed ? 200 : 100,
      decoration: BoxDecoration(
        color: _isTransformed ? Colors.orange : Colors.green,
        borderRadius: BorderRadius.circular(_isTransformed ? 100 : 20),
        boxShadow: [
          BoxShadow(
            color: (_isTransformed ? Colors.orange : Colors.green)
                .withOpacity(0.5),
            blurRadius: _isTransformed ? 30 : 10,
            spreadRadius: _isTransformed ? 10 : 2,
          ),
        ],
      ),
      padding: EdgeInsets.all(_isTransformed ? 40 : 20),
      child: Center(
        child: Icon(
          _isTransformed ? Icons.star : Icons.favorite,
          color: Colors.white,
          size: _isTransformed ? 60 : 30,
        ),
      ),
    );
  }

  String _getExampleTitle() {
    switch (_selectedExample) {
      case 0:
        return 'Size Animation';
      case 1:
        return 'Color Animation';
      case 2:
        return 'Border Radius Animation';
      case 3:
        return 'Combined Properties';
      default:
        return '';
    }
  }

  String _getExampleDescription() {
    switch (_selectedExample) {
      case 0:
        return 'Animates width and height properties. Duration: 500ms with easeInOut curve.';
      case 1:
        return 'Animates color and shadow. Duration: 800ms with smooth transitions.';
      case 2:
        return 'Animates borderRadius from square to circle. Duration: 600ms.';
      case 3:
        return 'Combines multiple properties: size, color, radius, shadow, and padding. Uses elasticOut curve for a bouncy effect.';
      default:
        return '';
    }
  }
}
