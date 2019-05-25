import 'package:flutter/material.dart';

class WI_MyAppBar extends StatelessWidget {
	WI_MyAppBar({this.title});

	final Widget title;

	@override
	Widget build(BuildContext context) {
		return new Container(
			height: 56.0,
			padding: const EdgeInsets.symmetric(horizontal: 8), // 水平方向左右各插入8像素
			// 描述如何绘制一个 box
			decoration: new BoxDecoration(color: Colors.blue[500]),
			// 水平方向的线性布局 
			child: new Row(
				children: <Widget>[
					new IconButton(
						icon: new Icon(Icons.menu),
						tooltip: 'Navigation menu',
						onPressed: null, // null 会禁用 button
					),
					new Expanded(
						child: title,
					),
					new IconButton(
						icon: new Icon(Icons.search),
						tooltip: 'Search',
						onPressed: null,
					)
				],
			),
		);
	}
}

class WI_MyScaffold extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		// Material 是 UI 呈现的一张纸
		return new Material(
			child: new Column(
				children: <Widget>[
					new WI_MyAppBar(
						title: new Text(
							'Example title',
							style: Theme.of(context).primaryTextTheme.title,
						),
					),
					new Expanded(
						child: new Center(
							child: new Text('Hello, world!'),
						),
					),
				],
			),
		);
	}
}