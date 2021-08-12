import 'package:flutter/material.dart';
import'./HalamanKetiga.dart';

void main() {
    runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Class in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HalamanHome(),debugShowCheckedModeBanner: false,
    );
  }
}
class HalamanHome extends StatelessWidget {
  const HalamanHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child:Column(
          children:<Widget>[
            Text(
              'Ini adalah halaman Home',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text("Nama Lengkap : Setyo Nugroho"),
            Text('Kelas : XI RPL 6'),
            Text('No Absen : 07'),

            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama()));
              }, 
              child: Text('Halaman Pertama'),
              color: Colors.blue,
              textColor: Colors.black,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua()));
              }, 
              child: Text('Halaman Kedua'),
              color: Colors.pink,
              textColor: Colors.deepPurple,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga()));
              }, 
              child: Text('Halaman Ketiga'),
              color: Colors.yellow,
              textColor: Colors.indigo
            )
          ]
        )
      ),
    );
  }
}


class HalamanPertama extends StatelessWidget {
  const HalamanPertama({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('Ini adalah halaman pertama'),
      ),
      
    );
  }
}

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('Ini adalah halaman kedua'),
      ),
    );
  }
}