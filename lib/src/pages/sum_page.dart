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
            floatingActionButton: _buttonsCreate(),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
        );
    }

	Widget _buttonsCreate(){
		return Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: <Widget>[
				FloatingActionButton(
					child: Icon(Icons.refresh,size: 35,),
					onPressed: (){setState(() {_sum = 0; });},
				),
				SizedBox(width: 10.0,),
				FloatingActionButton(
					child: Icon(Icons.arrow_downward,size: 35,),
					onPressed: (){setState(() {_sum --;	});},
				),
				SizedBox(width: 10.0,),
				FloatingActionButton(
					child: Icon(Icons.arrow_upward,size: 35,),
					onPressed: (){setState(() {_sum ++; });},
				),
			],
		);
	}
}