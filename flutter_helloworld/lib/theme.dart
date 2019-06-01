import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyThemeApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final appName = 'Custom Themes';

		return new MaterialApp(
			title: appName,
			theme: new ThemeData(
				brightness: Brightness.dark,
				primaryColor: Colors.lightBlue[800],
				accentColor: Colors.cyan[600],
			),
			home: new MyThemeHomePage(
				title: appName,
			),
		);
	}
}

class MyThemeHomePage extends StatelessWidget {
	final String title;
	
	MyThemeHomePage({Key key, @required this.title}) : super(key: key);
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: new AppBar(
				title: new Text(title),
			),
			body: new Center(
				child: new Container(
					color: Theme.of(context).accentColor,
					child: new Text(
						'Text with a background color',
						style: Theme.of(context).textTheme.title,
					),
				),
			),
			floatingActionButton: new Theme(
				data: Theme.of(context).copyWith(accentColor: Colors.yellow),
				child: new FloatingActionButton(
					onPressed: null,
					child: new Icon(Icons.add),
				),
			),
		);
	}
}