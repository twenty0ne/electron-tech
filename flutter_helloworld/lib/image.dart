import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

// 'https://raw.githubusercontent.com/flutter/website/master/examples/layout/lakes/interactive/images/lake.jpg'
class MyImageApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		var title = 'Fade in images';

		return new MaterialApp(
			title: title,
			home: new Scaffold(
				appBar: new AppBar(
					title: new Text(title),
				),
				body: new Stack(
					children: <Widget>[
						new Center(child: new CircularProgressIndicator()),
						new Center(
							child: new FadeInImage.memoryNetwork(
								placeholder: kTransparentImage,
								image: 'https://raw.githubusercontent.com/flutter/website/master/examples/layout/lakes/interactive/images/lake.jpg',
							),
						)
					],
				)
			),
		);
	}
}