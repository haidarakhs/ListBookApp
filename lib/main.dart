import 'package:dicoding_flutter_project/main_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart'; 

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true, 
      locale: DevicePreview.locale(context), // Locale diambil dari DevicePreview
      builder: DevicePreview.appBuilder, // Builder dari DevicePreview
      theme: ThemeData(
        brightness: MediaQuery.of(context).platformBrightness, // Brightness dari MediaQuery
      ),
      home: const MainPage(),
    );
  }
}
