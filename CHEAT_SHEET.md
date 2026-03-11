# AnimatedContainer Quick Cheat Sheet

## ⚡ Quick Syntax

```dart
AnimatedContainer(
  duration: const Duration(milliseconds: 500),
  curve: Curves.easeInOut,
  width: _width,
  height: _height,
  color: _color,
  child: YourWidget(),
)
```

## 🎯 3-Step Animation Process

1. **Define state variable**
   ```dart
   double _width = 100;
   ```

2. **Change in setState**
   ```dart
   setState(() => _width = 200);
   ```

3. **AnimatedContainer handles the rest!**

## 📊 Common Durations

| Duration | Use Case |
|----------|----------|
| 200ms | Quick feedback |
| 300-500ms | Standard UI animations |
| 800ms-1s | Emphasis, dramatic effect |
| 1s+ | Usually too slow |

## 🎭 Popular Curves

| Curve | Effect | Best For |
|-------|--------|----------|
| `linear` | Constant speed | Progress bars |
| `easeInOut` | ⭐ Smooth both ends | Most UI animations |
| `easeIn` | Slow start | Fade in |
| `easeOut` | Slow end | Fade out |
| `elasticOut` | Bouncy | Playful, attention |
| `bounceOut` | Bounces at end | Fun effects |

## 🎨 Animatable Properties

### Size & Layout
- `width`, `height`
- `constraints`
- `alignment`
- `padding`, `margin`

### Visual
- `color`
- `decoration.color`
- `decoration.borderRadius`
- `decoration.boxShadow`
- `decoration.gradient`
- `decoration.border`

### Transform
- `transform` (rotation, scale, skew)

## ⚙️ Demo Examples Quick Reference

### Tab 1: Size
- **Duration:** 500ms
- **Curve:** easeInOut
- **Changes:** 100x100 ↔ 250x250

### Tab 2: Color
- **Duration:** 800ms
- **Curve:** easeInOut
- **Changes:** Blue ↔ Red (+ shadow)

### Tab 3: Radius
- **Duration:** 600ms
- **Curve:** easeInOut
- **Changes:** Square ↔ Circle (0 ↔ 100)

### Tab 4: Combined
- **Duration:** 700ms
- **Curve:** elasticOut
- **Changes:** Size, color, radius, shadow, padding, icon

## 🚀 Key Talking Points

1. **Simplest animation in Flutter**
2. **No controllers needed**
3. **Just setState() with new values**
4. **Works with most Container properties**
5. **Automatic interpolation**
6. **No cleanup/dispose required**

## ❓ Expected Questions & Answers

**Q: When NOT to use AnimatedContainer?**
A: For complex multi-widget animations, use AnimationController instead.

**Q: Can I animate a list?**
A: Use AnimatedList instead. AnimatedContainer is for single widgets.

**Q: How to chain animations?**
A: Use Future.delayed() or AnimationController for sequencing.

**Q: Performance concerns?**
A: Very performant for normal use. Profile if animating many widgets.

**Q: Works on all platforms?**
A: Yes! iOS, Android, Web, Windows, macOS, Linux.

## 💡 Pro Tips

- ✅ Start with 300-500ms, adjust to taste
- ✅ easeInOut works for 90% of cases
- ✅ Test on actual device (feels different than simulator)
- ✅ Less is more - don't over-animate
- ✅ Combine multiple properties for richer effects

## 🎤 Presentation Flow

1. **Intro** → What is AnimatedContainer?
2. **Tab 1** → Simple size animation
3. **Tab 2** → Color + effects
4. **Tab 3** → Shape morphing
5. **Tab 4** → Complex combined
6. **Code** → Show how simple it is
7. **Use Cases** → Real-world examples
8. **Q&A** → Answer questions

## 🔗 Quick Commands

```bash
# Run in browser
cd animated_container_demo
flutter run -d chrome

# Run on device
flutter run

# Check available devices
flutter devices

# Troubleshooting
flutter clean && flutter pub get
```

## 📱 Demo Controls

- **Segmented Buttons** → Switch between examples
- **Floating Action Button** → Trigger animation
- **Bottom Section** → Shows current example info

## 🎓 Key Code Locations (main.dart)

- **Line ~38:** State variables
- **Line ~50:** _toggleAnimation() method
- **Line ~170:** Size example
- **Line ~190:** Color example
- **Line ~210:** Radius example
- **Line ~230:** Combined example

---

**Good Luck with Your Presentation! 🎉**

*Remember: Let the animations speak for themselves!*
