import 'package:dashboard/feature/widgets/home_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/search_bar/gf_search_bar.dart';

import '../../style_widget.dart';
import '../widgets/custom_search_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    List list = [
      "Flutter",
      "React",
      "Ionic",
      "Xamarin",
      "hello",
      "word",
      "test",
    ];
    return Scaffold(
      appBar: HomeHeaderWidget(),
      body: Container(child: Text("hello")),
    );
  }
}
