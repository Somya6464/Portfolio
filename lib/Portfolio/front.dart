import 'package:demo/Portfolio/desktop/desktop_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      // mobile:(BuildContext context) =>const MobileUi(),
      desktop: (BuildContext context) =>const DesktopUi(),
    );
  }
}








