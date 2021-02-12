import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

var image1 = AssetImage('images/shirt.jpg');
var image2 = AssetImage('images/shorts.jpg');
var image3 = AssetImage('images/hat.jpg');
var image4 = AssetImage('images/ball.jpg');
var image5 = AssetImage('images/table.jpg');
var image6 = AssetImage('images/chair');

var shirt = Image(
  image: image1,
);
var shorts = Image(
  image: image2,
);
var hat = Image(
  image: image3,
);
var ball = Image(
  image: image4,
);
var table = Image(
  image: image5,
);
var chair = Image(
  image: image6,
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ephraims Store',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        // colour effect
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Ephraimss Store'),
    );
  }
}

class ShirtImageAsset extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/shirt.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image,);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List data = ['Store', 'Products', 'Buy', 'Sell'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[

          GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReXmREHDqqPtlgTna_XWSnMffHERI87COYpg&usqp=CAU'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs2i3LQOW33Jusj063UvygQ54QqDQ_PFXjwQ&usqp=CAU'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3iwjXv_mrGA8sVL0w6CvxswhIntpk7w59ZQ&usqp=CAU')
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2zAicr4A4TL3kzuN0ahmRA42QSlw3XYFGYw&usqp=CAU')
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAmt4T17LgcOf_IEbLs_EmtcesUjziBwNRhQ&usqp=CAU')
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-q0yEno_XWkds81AVnEX2Z9VH4y4k3_-PXQ&usqp=CAU')
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Text('Things'),
                  color: Colors.blue[500],
                  padding: EdgeInsets.all(5),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(child: Text('Things'),
                  color: Colors.red[500],
                  padding: EdgeInsets.all(5),),
              ),
            ],
          ),

          SizedBox(height: 10,),
          Text('Gridview Builder By Ephraim'),

          GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 5.0),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.greenAccent,
                child: GridTile(
                  child: Text(data[index]),
                ),
              );
            },

          ),
        ],
      ),
    );
  }
}
