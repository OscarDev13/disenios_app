import 'package:disenios/widgets/background.dart';
import 'package:disenios/widgets/card_table.dart';
import 'package:disenios/widgets/custom_bottom_navigation_bar.dart';
import 'package:disenios/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // permite poner widgets encima de otros
        children: [
          // Background purple gradient
          Background(),
          //Home body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  // const HomeBody({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          // Titles
          PageTitle(),

          // card tble
          CardTable()
        ],
      ),
    );
  }
}
