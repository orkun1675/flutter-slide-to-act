import 'package:flutter/material.dart';

import 'package:slide_to_act/slide_to_act.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slide to act Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Builder(
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () async {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                    innerColor: Colors.black,
                    outerColor: Colors.white,
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                    alignment: Alignment.centerRight,
                    sliderButtonIcon: Icon(Icons.lock),
                    child: Text(
                      'Unlock',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                    height: 100,
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                    sliderButtonIconSize: 48,
                    sliderButtonYOffset: -20,
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                    elevation: 24,
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                    borderRadius: 16,
                    animationDuration: Duration(seconds: 1),
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                    reversed: true,
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                    submittedIcon: Icon(
                      Icons.done_all,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: key,
                    trigger: 0.3,
                    onSubmit: () {
                      return Future.delayed(
                        Duration(seconds: 1),
                        () => key.currentState!.reset(),
                      );
                    },
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    sliderRotate: false,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
