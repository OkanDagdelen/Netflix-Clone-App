import 'package:flutter/material.dart';
import 'package:netflix_app/ui/views/ara.dart';
import "package:netflix_app/ui/views/detay_sayfa.dart";
import 'package:netflix_app/data/entity/filmler.dart';
import 'package:netflix_app/ui/views/indirilenler.dart';
import 'package:netflix_app/ui/views/yenivepopuler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Anasayfa(),
    YeniVePopuler(),
    Ara(),
    Indirilenler(),
  ];
  List<Filmler> filmlerListesi = [];
  @override
  void initState() {
    super.initState();
    filmleriYukle();
  }
  Future<List<Filmler>> filmleriYukle() async {
    var f1 = Filmler(id: 1, ad: "The Killer", resim: "killerarkaplan.jpg", hakkinda: "Bir suikastçı, hedefini kıl payı ıskaladığı önemli bir görevin ardından, kişisel olmadığını iddia ettiği uluslararası bir intikam avıyla işverenlerine ve de kendine savaş açar.",yil: 2023,sahne1: "killersahne1.png", sahne2: "killersahne2.png", sahne3: "killersahne3.png",sahne4: "killersahne4.png");
    var f2 = Filmler(id: 2, ad: "Bird Box", resim: "birdboxarkaplan.jpg", hakkinda: "Görünmeyen uğursuz bir varlığın nüfusun büyük kısmını yok etmesinden beş yıl sonra, hayatta kalan bir kadın ve iki çocuğu çaresiz bir şekilde güvenli bir yere ulaşmaya çabalar.",yil: 2022,sahne1: "birdboxsahne1.png", sahne2: "birdboxsahne2.png", sahne3: "birdboxsahne3.png",sahne4: "birdboxsahne4.png");
    var f3 = Filmler(id: 3, ad: "Fıght Club", resim: "fıghtclubarkaplan.png", hakkinda: "Hayata dair inancını yitirmiş bir ofis çalışanı, gizemli yeni dostu Tyler Durden'la kurduğu gizli topluluk sayesinde, bastırılmış duygularını açığa vurma fırsatı yakalar.",yil: 2022,sahne1: "fıghtclubsahne1.png", sahne2: "fıghtclubsahne2.png", sahne3: "fıghtclubsahne3.png",sahne4: "fıghtclubsahne4.png");
    var f4 = Filmler(id: 4, ad: "One Piece", resim: "onepiecearkaplan.png", hakkinda: "Popüler manganın bu canlı çekim uyarlamasında genç korsan Monkey D. Luffy, hasır şapkası ve çılgın mürettebatıyla birlikte hazineyi bulmak için destansı bir yolculuğa çıkıyor.",yil: 2023,sahne1: "onepiecesahne1.png", sahne2: "onepiecesahne2.png", sahne3: "onepiecesahne3.png",sahne4: "onepiecesahne4.png");
    var f5 = Filmler(id: 5, ad: "Breaking Bad", resim: "breakingbadarkaplan.jpg", hakkinda: "Kanserden öleceğini öğrenen bir kimya öğretmeni, ailesinin geleceğini garanti altına almak için metamfetamin üretip satmak üzere eski bir öğrencisiyle kafa kafaya verir.",yil: 2022,sahne1: "breakingbadsahne1.jpg", sahne2: "breakingbadsahne2.jpg", sahne3: "breakingbadsahne3.jpg",sahne4: "breakingbadsahne4.jpg");
    var f6 = Filmler(id: 6, ad: "Spirited Away", resim: "sssarkaplan.jpg", hakkinda: "Chihiro, bir cadının yönettiği ve ona karşı gelenlerin hayvana dönüştürüldüğü sihirli bir dünyaya girer.",yil: 2022,sahne1: "ssssahne1.jpg", sahne2: "ssssahne2.jpg", sahne3: "ssssahne3.jpg",sahne4: "ssssahne4.jpg");
    var f7 = Filmler(id: 7, ad: "Extinction ", resim: "extinctionarkaplan.jpg", hakkinda: "Uzaylı istilasına kafayı takmış olan bir aile babası, uzaydan gelen bir gücün dünyalıları yok etmeye başlaması üzerine en kötü kâbusuyla yüzleşir.",yil: 2022,sahne1: "extinctionsahne1.jpg", sahne2: "extinctionsahne2.jpg", sahne3: "extinctionsahne3.jpg",sahne4: "extinctionsahne4.jpg");
    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);
    filmlerListesi.add(f7);
    return filmlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("resimler/netflixlogo.png",width: 28,height: 28,),
            SizedBox(width: 260),
            Image.asset("resimler/tv.png", width: MediaQuery.of(context).size.width * 0.08,height: MediaQuery.of(context).size.width * 0.08,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "resimler/anaekran.png",
                  width: 470, // Resmi genişletmek için
                  height: 550,
                  fit: BoxFit.cover,
                  // Resmi kaplamak için
                ),
                Positioned(
                  left: 60,
                  bottom: 435,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Dizi",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  left: 165,
                  bottom: 435,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Film",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  left: 270,
                  bottom: 435,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Kategori",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Positioned(
                  child: Image.asset("resimler/tus2.png",width:286 ,height: 32,),
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Son Eklenenler",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200, // İstedğin kadar yükseklik belirle
              child: GestureDetector(
                onTap: () {
                  print("Tıklandı");
                },
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: filmlerListesi[0]),
                          ),
                          );
                        },
                        child: Image.asset("resimler/killer.png",width: 101,height: 160.07,)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: filmlerListesi[1]),
                        ),
                        );
                      },
                      child: Image.asset("resimler/birdbox.png",
                          width: 101, height: 145.11),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: filmlerListesi[2]),
                        ),
                        );
                      },
                      child: Image.asset("resimler/fightclub.png",
                          width: 101, height: 145.11),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: filmlerListesi[3]),
                        ),
                        );
                      },
                      child: Image.asset("resimler/onepiece.png",
                          width: 101, height: 145.11),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: filmlerListesi[4]),
                        ),
                        );
                      },
                      child: Image.asset("resimler/breakingbad.png",
                          width: 101, height: 145.11),
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: filmlerListesi[5]),
                          ),
                          );
                        },
                        child: Image.asset("resimler/sss.png", width: 101, height: 145.11)),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa(film: filmlerListesi[6]),
                          ),
                          );
                        },
                        child: Image.asset("resimler/ex.png", width: 101, height: 145.11)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Anasayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Yeni ve Popüler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            label: "Ara",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_for_offline_outlined),
            label: "İndirilenler",
          ),
        ],
      ),
    );
  }
}
