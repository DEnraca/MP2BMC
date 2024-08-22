import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title: "Hello BMC Flutter",
            home:Scaffold(
                appBar: AppBar(
                title: Text(
                  "Hello BMC Flutter",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                backgroundColor: Colors.deepPurple,
              ),

              body:Builder(builder:(context) => Center(
                  child: Column(
                    children: [
                      Text(
                        "Hello Flutter",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800]
                        ),
                      ),
                      Text(
                        "Discover Flutter",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrangeAccent
                        ),
                      ),
                      Image.network("https://images.freeimages.com/image/previews/12c/semi-flat-study-supply-png-5690858.png",
                      height: 350,
                      ),
                      ElevatedButton(
                        child: Text(
                          'Contact Us'
                        ),
                        onPressed: () => contactUs(context),
                      )
                    ],
                  )

              ),
              )
            )
        );
    }
} //endline of MyApp Class

void contactUs(BuildContext context){
  showDialog(
    context: context,
    builder: (BuildContext context){
      return  AlertDialog(
        title: Text(
          'Contact Us'
        ),
        content: Text(
          'Mail us at hello@world.com'
        ),
        actions: <Widget> [
          TextButton(
            child: Text(
              'Close'
            ),
            onPressed: () => Navigator.of(context).pop(),
          )
        ]
      );
    } // builder
  ); // showDialog
} // void contact us
