import 'dart:developer';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Animations Text',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Simple Animations Text'),
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case TypewriterWidget.routeName:
                return const TypewriterWidget();
              case TyperAnimatedTextWidget.routeName:
                return const TyperAnimatedTextWidget();
              case TextLiquidFillWidget.routeName:
                return const TextLiquidFillWidget();
              default:
                return const TypewriterWidget();
            }
          },
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  static const routeName = '/';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Examples:',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.restorablePushNamed(
                    context,
                    TypewriterWidget.routeName,
                  );
                },
                child: const Text('Type Writer'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.restorablePushNamed(
                    context,
                    TyperAnimatedTextWidget.routeName,
                  );
                },
                child: const Text('Typer Animated Text'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.restorablePushNamed(
                    context,
                    TextLiquidFillWidget.routeName,
                  );
                },
                child: const Text('Text Liquid Fill'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TypewriterWidget extends StatelessWidget {
  const TypewriterWidget({
    super.key,
  });

  static const routeName = 'typewriter';

  @override
  Widget build(BuildContext context) {
    final counterTextStyle = GoogleFonts.montserrat(
      fontStyle: FontStyle.italic,
      textStyle: Theme.of(context).textTheme.displayLarge,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Type Writer'),
      ),
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
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
          ),
        ),
      ),
    );
  }
}

class TyperAnimatedTextWidget extends StatelessWidget {
  const TyperAnimatedTextWidget({super.key});

  static const routeName = 'typer_animated_text';

  @override
  Widget build(BuildContext context) {
    final counterTextStyle = GoogleFonts.montserrat(
      textStyle: Theme.of(context).textTheme.displaySmall,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Typer Animated Text'),
      ),
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
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
          ),
        ),
      ),
    );
  }
}

class TextLiquidFillWidget extends StatelessWidget {
  const TextLiquidFillWidget({super.key});

  static const routeName = 'text_liquid_fill';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Text Liquid Fill'),
      ),
      body: Center(
        child: TextLiquidFill(
          textAlign: TextAlign.center,
          text: 'LIQUIDY',
          waveColor: Colors.blueAccent,
          boxBackgroundColor: Colors.yellow,
          textStyle: const TextStyle(
            fontSize: 80.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
