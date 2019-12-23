import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

    final textStyle = TextStyle(fontSize: 25);
  
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(   
                title: Text('Título'),
                centerTitle: true,
                elevation: 100,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('Número de clicks:', style: textStyle),
                        Text('0', style: textStyle),
                    ],
                ),
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add, size: 35,),
                onPressed: (){
                    print('Hola mundo click');
                },
            )
        );
    }
}