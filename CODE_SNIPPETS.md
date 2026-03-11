# Code Snippets for Presentation

## 1. Basic AnimatedContainer Template

```dart
AnimatedContainer(
  duration: const Duration(milliseconds: 300),
  curve: Curves.easeInOut,
  width: _width,
  height: _height,
  color: _color,
  child: YourWidget(),
)
```

## 2. With setState to Trigger Animation

```dart
void _animate() {
  setState(() {
    _width = _width == 100 ? 200 : 100;
    _height = _height == 100 ? 200 : 100;
  });
}
```

## 3. Complete Minimal Example

```dart
import 'package:flutter/material.dart';

class SimpleAnimatedContainer extends StatefulWidget {
  @override
  State<SimpleAnimatedContainer> createState() => _SimpleAnimatedContainerState();
}

class _SimpleAnimatedContainerState extends State<SimpleAnimatedContainer> {
  bool _isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: _isLarge ? 200 : 100,
          height: _isLarge ? 200 : 100,
          color: _isLarge ? Colors.blue : Colors.red,
          child: const Center(child: Text('Tap me')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _isLarge = !_isLarge),
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
```

## 4. Animation Curves Comparison

```dart
// Linear - constant speed
curve: Curves.linear

// EaseIn - starts slow, ends fast
curve: Curves.easeIn

// EaseOut - starts fast, ends slow
curve: Curves.easeOut

// EaseInOut - slow start and end, fast middle
curve: Curves.easeInOut

// Elastic - bouncy effect
curve: Curves.elasticOut

// Bounce - bounces at the end
curve: Curves.bounceOut
```

## 5. All Animatable Properties

```dart
AnimatedContainer(
  duration: const Duration(milliseconds: 500),
  
  // Size
  width: 200,
  height: 200,
  
  // Constraints
  constraints: BoxConstraints(maxWidth: 300),
  
  // Alignment
  alignment: Alignment.center,
  
  // Padding & Margin
  padding: EdgeInsets.all(20),
  margin: EdgeInsets.symmetric(horizontal: 10),
  
  // Decoration
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        offset: Offset(0, 5),
      ),
    ],
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
    ),
    border: Border.all(color: Colors.white, width: 2),
  ),
  
  // Foreground decoration
  foregroundDecoration: BoxDecoration(
    border: Border.all(color: Colors.white),
  ),
  
  // Transform
  transform: Matrix4.rotationZ(0.1),
  
  child: YourWidget(),
)
```

## 6. Practical Use Case: Expandable Card

```dart
class ExpandableCard extends StatefulWidget {
  @override
  State<ExpandableCard> createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => _isExpanded = !_isExpanded),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        height: _isExpanded ? 300 : 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: _isExpanded ? 20 : 5,
              spreadRadius: _isExpanded ? 5 : 1,
            ),
          ],
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Card Title', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            if (_isExpanded)
              Text('This is the expanded content that appears when you tap the card.'),
          ],
        ),
      ),
    );
  }
}
```

## 7. Multiple Containers in Sequence

```dart
Row(
  children: [
    AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: _isActive ? 100 : 50,
      height: 50,
      color: Colors.red,
    ),
    SizedBox(width: 10),
    AnimatedContainer(
      duration: Duration(milliseconds: 700),
      width: _isActive ? 100 : 50,
      height: 50,
      color: Colors.blue,
    ),
    SizedBox(width: 10),
    AnimatedContainer(
      duration: Duration(milliseconds: 900),
      width: _isActive ? 100 : 50,
      height: 50,
      color: Colors.green,
    ),
  ],
)
```

## 8. With ClipRRect for Image Animation

```dart
ClipRRect(
  child: AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    width: _isExpanded ? 300 : 100,
    height: _isExpanded ? 300 : 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(_isExpanded ? 150 : 10),
      image: DecorationImage(
        image: NetworkImage('https://example.com/image.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  ),
)
```

## Key Takeaways to Mention

1. **setState() triggers the animation** - AnimatedContainer automatically interpolates between old and new values

2. **Duration and Curve are key** - They control how the animation looks and feels

3. **Works with any property** - Size, color, borders, shadows, padding, transforms, etc.

4. **No cleanup needed** - Unlike AnimationController, no dispose() method required

5. **Composition works great** - You can have multiple AnimatedContainers and they'll all animate independently

6. **Performance is good** - Flutter optimizes these animations efficiently
