// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/new_note_page.dart';
import 'package:scribe/view/widgets/my_fab.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Pallete.tertiaryColors,
        title: const Text(
          "scribe",
          style: TextStyle(fontSize: 25),
        ),
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FittedBox(
          child: MyFloatingButton(onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NewNotePage()));
          }),
        ),
      ),
      body: MasonryGridView.builder(
          itemCount: 15,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (builder, context) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 8, left: 6, right: 6, bottom: 6),
              child: Container(
                padding: EdgeInsets.all(70),
                decoration: BoxDecoration(
                  color: Pallete.tertiaryColors,
                  border: Border.all(color: Pallete.borderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          }),
    );
  }
}
