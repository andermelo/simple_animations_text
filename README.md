# Animações de texto no seu App

![animate example](doc/animates_example.gif)

Demonstração de algumas das varias possiblidade dessa  biblioteca completa para Flutter.

## Setup:

```other
flutter pub add google_fonts
```

**Flutter '>=3.1.5 <4.0.0'**

```other
flutter pub add animated_text_kit
```

### Typewriter Animation

```dart
DefaultTextStyle(
            style: const TextStyle(
              fontSize: 22.0,
              color: Colors.black,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Discipline is the best tool',
                    textStyle: counterTextStyle),
                TypewriterAnimatedText('Design first, then code',
                    textStyle: counterTextStyle),
                TypewriterAnimatedText('Do not patch bugs out, rewrite them',
                    textStyle: counterTextStyle),
                TypewriterAnimatedText('Do not test bugs out, design them out',
                    textStyle: counterTextStyle),
              ],
              onTap: () {
                log("Tap Event");
              },
            ),
          )
```

### Typer Animated Text

```dart
DefaultTextStyle(
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.black,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('It is not enough to do your best,',
                    textStyle: counterTextStyle),
                TyperAnimatedText('you must know what to do,',
                    textStyle: counterTextStyle),
                TyperAnimatedText('and then do your best',
                    textStyle: counterTextStyle),
                TyperAnimatedText('- W.Edwards Deming',
                    textStyle: counterTextStyle),
              ],
              onTap: () {
                log("Tap Event");
              },
            ),
          )
```

### Text Liquid Fill

```dart
TextLiquidFill(
          textAlign: TextAlign.center,
          text: 'LIQUIDY',
          waveColor: Colors.blueAccent,
          boxBackgroundColor: Colors.yellow,
          textStyle: const TextStyle(
            fontSize: 80.0,
            fontWeight: FontWeight.bold,
          ),
        )
```

## Conclusão

Cada uma dessas animações oferece uma maneira única de apresentar texto em seu aplicativo Flutter. Experimente com diferentes estilos, velocidades e efeitos para encontrar o que melhor se adapta ao seu projeto. Lembre-se de que a animação pode ser uma ferramenta poderosa para chamar a atenção e melhorar a experiência do usuário, então use-a com sabedoria!

