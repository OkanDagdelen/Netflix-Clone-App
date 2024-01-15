import 'package:flutter/material.dart';
import 'package:netflix_app/data/entity/filmler.dart';

class DetaySayfa extends StatefulWidget {
  Filmler film;


  DetaySayfa({required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("resimler/${widget.film.resim}"),
              SizedBox(height: 10,),
              Positioned(
                  left: 60,
                  bottom: 435,
                  child: Image.asset("resimler/nserieslogo.png", width: 46.93,height: 23.59,)),
              Text("${widget.film.ad}",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),),
              SizedBox(height: 4),
              Text("${widget.film.yil}",style: TextStyle(color: Colors.white,fontSize: 12),),
              SizedBox(height: 10),
              Image.asset("resimler/playbutton.png",width: 500,height: 40,),
              SizedBox(height: 5,),
              Image.asset("resimler/indirbuton.png",width: 500,height: 40,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${widget.film.hakkinda}",style: TextStyle(color: Colors.white,fontSize: 15,),),
              ),
              Image.asset("resimler/ratesharebuttons.png",width: 189.31,height: 38.95,),
              SizedBox(height: 10,),
              Text("Videolar",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold,),),
              SizedBox(height: 10,),
              Image.asset("resimler/${widget.film.sahne1}"),
              SizedBox(height: 10),
              Image.asset("resimler/${widget.film.sahne2}"),
              SizedBox(height: 10),
              Image.asset("resimler/${widget.film.sahne3}"),
              SizedBox(height: 10),
              Image.asset("resimler/${widget.film.sahne4}"),




            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
