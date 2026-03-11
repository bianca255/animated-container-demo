# animated_container_demo

A new Flutter project.

## Getting Started

# AnimatedContainer Demo

A comprehensive Flutter demonstration project showcasing the power of `AnimatedContainer` widget for smooth, implicit animations.

## Purpose

This project is designed for presentations and learning. It demonstrates 4 different animation scenarios using AnimatedContainer:

1. **Size Animation** - Width and height transitions
2. **Color Animation** - Color and shadow effects
3. **Border Radius Animation** - Shape morphing (square to circle)
4. **Combined Animation** - Multiple properties animated together

## Quick Start

### Prerequisites
- Flutter SDK installed
- Chrome browser (for web) or any device/emulator

### Run the Demo

**For presentations (recommended - runs in browser):**
```bash
cd animated_container_demo
flutter run -d chrome
```

**For Windows desktop:**
```bash
flutter run -d windows
```

**For mobile:**
```bash
flutter run
```

## Project Structure

```
animated_container_demo/
├── lib/
│   └── main.dart                 # Main application with 4 examples
├── CHEAT_SHEET.md               # Quick reference guide
└── README.md                     # This file
```

## Features

### Interactive Demo
- Tab-based navigation between examples
- Real-time animation with "Animate" button
- Visual descriptions for each example
- Clean, Material Design 3 UI

### 4 Animation Examples
1. **Size** (500ms, easeInOut) - Simple width/height animation
2. **Color** (800ms, easeInOut) - Color transitions with shadow effects
3. **Radius** (600ms, easeInOut) - Border radius morphing
4. **Combined** (700ms, elasticOut) - Multiple properties with bouncy effect

## What is AnimatedContainer?

- Implicit animation widget in Flutter
- Automatically animates property changes
- No need for AnimationController
- Perfect for simple, smooth UI transitions

## Key Properties

```dart
AnimatedContainer(
  duration: Duration(milliseconds: 500),  // Required
  curve: Curves.easeInOut,                // Optional
  width: _width,                           // Animatable
  height: _height,                         // Animatable
  color: _color,                           // Animatable
  // ...and many more properties
)
```

## Code Examples

### Basic Usage
```dart
AnimatedContainer(
  duration: const Duration(milliseconds: 300),
  width: _isExpanded ? 200 : 100,
  height: _isExpanded ? 200 : 100,
  color: _isExpanded ? Colors.blue : Colors.red,
)
```

### With setState
```dart
void _animate() {
  setState(() {
    _width = _width == 100 ? 200 : 100;
  });
}
```

## Use Cases

- Expandable cards
- Button press effects  
- Loading states
- Theme transitions
- Modal animations
- Interactive UI elements

## Comparison: AnimatedContainer vs AnimationController

| Feature | AnimatedContainer | AnimationController |
|---------|------------------|---------------------|
| Complexity | Simple | Complex |
| Lines of Code | ~10 | ~50+ |
| Use Case | Single widget | Multiple widgets |
| Cleanup | Automatic | Manual |

**Rule:** Start with AnimatedContainer, upgrade to AnimationController only if needed.
