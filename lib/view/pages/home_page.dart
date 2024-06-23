// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:emerge_alert_dialog/emerge_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:scribe/utils/constants.dart';
import 'package:scribe/view/pages/edit_note_page.dart';
import 'package:scribe/view/widgets/my_drawer.dart';
import 'package:scribe/view/widgets/my_fab.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Pallete.tertiaryColors,
        title: const Text(
          "scribe",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      floatingActionButton: MyFloatingButton(),
      body: RefreshIndicator(
        backgroundColor: Pallete.tertiaryColors,
        color: Pallete.secondaryColor,
        onRefresh: ()async{
          await Future.delayed(Duration(milliseconds: 1500));
        },
        child: AnimationLimiter(
          child: MasonryGridView.builder(
              itemCount: 8,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (builder, ctx) {
                return AnimationConfiguration.staggeredGrid(
                  position: ctx,
                  duration: Duration(milliseconds: 500),
                  columnCount: 2,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, left: 6, right: 6, bottom: 6),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => EditNotePage()));
                          },
                          onLongPress: () {
                            _showMyDialog(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Pallete.tertiaryColors,
                              border: Border.all(color: Pallete.borderColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Note title',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "dfjhkdaf asdfjaksldf jaksldjflkas dflkasjdflkasj dfklasdjfkl asdfjkasd flkasdfjaksd fjaksdfkalsdf klasdjflkasdflkasdfjaskdf jlaksdjf sdkjfhskd sdfsakldfjasd fasdfjaskdf sdklkkkdkdk kljdfhkjlsdhfjkasdhflkjasdhfkjashdfkjashdfkjashdfkjashdfkjashdfkjashdfkjashdfkjashdfkjashdfkjasdhfkljashdfkjasdhf asdfhalskd faksdf hamsdjhfkja sdfhkasj dfhkasjdfh kasjdfhkjasd fkasjldfhlwf aksjldfh vkjs hskdjfh kjasdfhjkasd sdkj",
                                    maxLines: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }

  void _showMyDialog(BuildContext context) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: EmergeAlertDialog(
            animationDuration: 300,
            alignment: Alignment.bottomCenter,
            emergeAlertDialogOptions: EmergeAlertDialogOptions(
                title: const Text(
                  "Warning!",
                  textAlign: TextAlign.center,
                ),
                backgroundColor: Pallete.tertiaryColors,
                content: Text("Deleted note can't be recovered"),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Pallete.borderColor),
                        backgroundColor: Pallete.tertiaryColors),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Pallete.secondaryColor),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Delete'),
                  ),
                ]),
          ),
        );
      },
    );
  }
}
