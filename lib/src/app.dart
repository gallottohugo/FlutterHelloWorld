import 'package:flutter/material.dart';
import 'package:flutter_hello_world/src/pages/sum_page.dart';
//import 'package:flutter_hello_world/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  	@override
  	Widget build(context) {
    	return MaterialApp(
			debugShowCheckedModeBanner: false,
      		home: Center(
				//child: HomePage(),
        		child: SumPage(),
      		)
    	);
  	}
}