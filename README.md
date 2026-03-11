# animated_container_demo

A new Flutter project.

## Getting Started

# AnimatedContainer Demo

A comprehensive Flutter demonstration project showcasing the power of `AnimatedContainer` widget for smooth, implicit animations.

## 🎯 Purpose

This project is designed for presentations and learning. It demonstrates 4 different animation scenarios using AnimatedContainer:

1. **Size Animation** - Width and height transitions
2. **Color Animation** - Color and shadow effects
3. **Border Radius Animation** - Shape morphing (square to circle)
4. **Combined Animation** - Multiple properties animated together

## 🚀 Quick Start

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

## 📁 Project Structure

```
animated_container_demo/
├── lib/
│   └── main.dart                 # Main application with 4 examples
├── PRESENTATION_NOTES.md         # Detailed presentation guide
├── CODE_SNIPPETS.md              # Copy-paste code examples
├── SLIDE_OUTLINE.md              # Complete slide-by-slide outline
└── README.md                     # This file
```

## 📚 Documentation Files

- **PRESENTATION_NOTES.md** - Complete guide with talking points, key concepts, and Q&A prep
- **CODE_SNIPPETS.md** - Ready-to-use code examples for different scenarios
- **SLIDE_OUTLINE.md** - Full presentation structure with 21 slides outlined

## 🎨 Features

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

## 💡 Key Learning Points

### What is AnimatedContainer?
- Implicit animation widget in Flutter
- Automatically animates property changes
- No need for AnimationController
- Perfect for simple, smooth UI transitions

### Key Properties
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

## 🎓 Presentation Tips

1. **Start the app before your presentation**
2. **Progress through tabs 1→4** showing increasing complexity
3. **Click "Animate" multiple times** to show smooth back-and-forth transitions
4. **Open main.dart** to show how simple the code is
5. **Emphasize duration and curve parameters**

## 🔧 Customization

Want to modify the examples? All code is in `lib/main.dart`:

- **State variables** (~line 38) - Change initial values
- **_toggleAnimation()** (~line 50) - Modify animation logic
- **Example builders** (~line 170) - Adjust individual animations
- **Durations and curves** - Experiment with different values

## 📖 Code Examples

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

See `CODE_SNIPPETS.md` for more examples!

## 🎯 Use Cases

- Expandable cards
- Button press effects  
- Loading states
- Theme transitions
- Modal animations
- Interactive UI elements

## 📊 Comparison: AnimatedContainer vs AnimationController

| Feature | AnimatedContainer | AnimationController |
|---------|------------------|---------------------|
| Complexity | Simple ✅ | Complex |
| Lines of Code | ~10 | ~50+ |
| Use Case | Single widget | Multiple widgets |
| Cleanup | Automatic | Manual |

**Rule:** Start with AnimatedContainer, upgrade to AnimationController only if needed.

## 🐛 Troubleshooting

**App won't run?**
```bash
flutter doctor
flutter clean
flutter pub get
flutter run
```

**Chrome not recognized?**
```bash
flutter devices  # Check available devices
```

## 🔗 Resources

- [Flutter AnimatedContainer Docs](https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html)
- [Flutter Animation Tutorial](https://docs.flutter.dev/development/ui/animations)
- [Curves Catalog](https://api.flutter.dev/flutter/animation/Curves-class.html)

## 📝 License

This is a demo project for educational purposes. Feel free to use and modify!

## 🙋 Questions?

Check out:
1. `PRESENTATION_NOTES.md` - Detailed explanations
2. `CODE_SNIPPETS.md` - More code examples
3. `SLIDE_OUTLINE.md` - Full presentation script

---

**Happy Presenting! 🚀**

Built with Flutter ❤️
