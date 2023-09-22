import 'package:flutter/material.dart';
import 'package:lcgjukebox/themes/color.dart';
import 'package:lcgjukebox/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: colorBackground,
      appBar: CustomAppBar(),
      //body: Placeholder(),
    );
  }
}
