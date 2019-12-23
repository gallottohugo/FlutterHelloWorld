import 'package:flutter/material.dart';


class SumPage extends StatefulWidget {

  	@override
  	State<StatefulWidget> createState() => _SumPageState();
}

class _SumPageState extends State<SumPage> {
	final _textStyle = TextStyle(fontSize: 25);
    int _sum = 0;

  	@override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(   
                title: Text('Stateful'),
                centerTitle: true,
                elevation: 100,
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text('Número de clicks:', style: _textStyle),
                        Text('$_sum', style: _textStyle),
                    ],
                ),
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add, size: 35,),
                onPressed: (){
					setState(() {
						_sum ++;	
					});
                },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
        );
    }
}