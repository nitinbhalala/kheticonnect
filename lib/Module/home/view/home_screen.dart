import 'package:flutter/material.dart';
import 'package:kheti_connect/Module/home/components/categories_list.dart';
import 'package:kheti_connect/Module/home/components/home_top_widget.dart';
import 'package:kheti_connect/Module/home/components/recently_list.dart';
import 'package:kheti_connect/Module/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: const Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [HomeTopWidget(), CategoriesList(), RecentlyList()],
          ),
        ),
      ),
    );
  }
}
