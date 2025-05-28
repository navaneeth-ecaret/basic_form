import 'package:basic_form/basic_form/bloc/basic_form_bloc.dart';
import 'package:basic_form/basic_form/view/basic_form_view.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(create: (context) => BasicFormBloc(), child: BasicForm()),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDymanicColor, ColorScheme? darkDynamicColor) {
        ColorScheme lightdeafultColorScheme;
        ColorScheme darkDefaultColorScheme;

        if (lightDymanicColor != null && darkDynamicColor != null) {
          lightdeafultColorScheme = lightDymanicColor.harmonized();
          darkDefaultColorScheme = darkDynamicColor.harmonized();
        } else {
          lightdeafultColorScheme = ColorScheme.fromSeed(
            seedColor: Colors.blue,
          );
          darkDefaultColorScheme = ColorScheme.fromSeed(seedColor: Colors.blue);
        }
        return MaterialApp(
          theme: ThemeData(colorScheme: lightdeafultColorScheme),
          darkTheme: ThemeData(colorScheme: darkDefaultColorScheme),
          themeMode: ThemeMode.dark,
          home: BasicForm(),
        );
      },
    );
  }
}
