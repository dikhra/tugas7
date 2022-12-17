
import 'package:flutter/material.dart';

void main() => runApp(GradientAppBarRun());

// stateless widget
class GradientAppBarRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // returning MaterialApp
    //var menu;
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light (),
      home:
      // scaffold
      Scaffold (
        body:
        CustomScrollView (
          slivers: <Widget>[
            // silverappbar for gradient widget
            SliverAppBar (
              pinned: true,
              expandedHeight: 80,
              flexibleSpace: Container (
                decoration: BoxDecoration (
                  // LinearGradient
                  gradient: LinearGradient (
                    // colors for gradient
                    colors: [
                      Colors.blue,
                      Colors.purple,
                    ],
                  ),
                ),
              ),
              // title of appbar
              //title: Text ("Gradient AppBar!"),
                title:
                Container(
                  child: Row(
                    children:<Widget>[Image.asset('assets/inaklug.png',fit: BoxFit.contain,
                      height: 60,),
                      Text('Inaklug'),
                    ],
                  ),
                ),
              actions: <Widget>[
                Padding(padding: EdgeInsets.symmetric(horizontal:16),
                  child: Icon(Icons.menu),
                )
              ],

            ),
            SliverList (
              delegate: SliverChildListDelegate ([
                // Body Element
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}