import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gabay_app/abwaan_model.dart';

import 'detail.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  List<AbwaanModel> gabayo = [
    AbwaanModel(
        name: "SALAAN CARABEEY",
        date: "1987-04-12 00:00",
        image: "images/carabeey.jpg",
        isHot: false,
        gabay: '''  Cabdillaahi Baashoow cataqay gabay caraadkiise
Maxaad cuni ha joogtee adduun caashaqii dhigaye
Sidan caddadka biluhu tirsaday waan cabsanayaye

Tixda waxan cashuuraba haddaan caynka ka higaadsho
Aniga cayda iiguma baxdiyo ceebta dibadeede
Carradaba nin laga naadiyoo caan baxaan ahaye'''),
    AbwaanModel(
        name: "MOHAMED HADRAAWI",
        date: "1980-07-12 00:00",
        image: "images/Hadrawi.jpg",
        isHot: true,
        gabay: '''  Maansaba dir bay leedihiyo daabac gooniyahe
Ninba wuxuu ka doontaa halkuu gaar u daaqsado e
Dadka uma gudboonee ragbay duuunyadiis tahaye
Deebaanka ruuxii hayaa lagaga daydaaye
Kani waa dux iyo sooryo iyo malabka doocaane

Waa dood macaanoo nin ragu lagu daweeyaaye
Waa gabay da'weynoo sannado dabaqu saarraaye
Waa doog Massaarriyo ku yaal Doollo iyo Hawde
Waa damal hadh weynoo midhaa daafta soo dhigaye
Waa ceel dad liqahoon fudayd loogu daadegine
Waa danan Ganaanoo fatahay dirirta cawleede
Waa dayr Shabeelloo dhulkiyo doojey beeraha'e
Waa daad rogmadey oo hadhsaday dooxadii Herer'e
Waa duhur Togdheeroo hugmoo kiciyey duufaane
Waa doonbir lagu oon bixiyo daran Nugaaleede  Maansaba dir bay leedihiyo daabac gooniyahe
Ninba wuxuu ka doontaa halkuu gaar u daaqsado e
Dadka uma gudboonee ragbay duuunyadiis tahaye
Deebaanka ruuxii hayaa lagaga daydaaye
Kani waa dux iyo sooryo iyo malabka doocaane

Waa dood macaanoo nin ragu lagu daweeyaaye
Waa gabay da'weynoo sannado dabaqu saarraaye
Waa doog Massaarriyo ku yaal Doollo iyo Hawde
Waa damal hadh weynoo midhaa daafta soo dhigaye
Waa ceel dad liqahoon fudayd loogu daadegine
Waa danan Ganaanoo fatahay dirirta cawleede
Waa dayr Shabeelloo dhulkiyo doojey beeraha'e
Waa daad rogmadey oo hadhsaday dooxadii Herer'e
Waa duhur Togdheeroo hugmoo kiciyey duufaane
Waa doonbir lagu oon bixiyo daran Nugaaleede'''),
    AbwaanModel(
        name: "ABSHIR NUUR FAARAX BACADLE",
        date: "2006-06-12 00:00",
        image: "images/bacadle.jpg",
        isHot: true,
        gabay: '''  Qorya raamso quudkana yaree qaadow adigaa leh
Boqolaal qorshoo wada qabya ah qaadow adigaa leh
Qoys dumaya qayliyo huruuf qaadow adigaa leh

Qalbi qooqan qoora aan waxtarin qaadow adigaa leh
Qardareeye kaadida qul quli qaadow adigaa leh
Jirkoo qaasha nadarkoo qayiran qaadow adigaa leh'''),
    AbwaanModel(
        name: "CIGE AW CALI",
        date: "1998-04-12 00:00",
        image: "images/cige.jpg",
        isHot: false,
        gabay: '''  Markii hore Candhuuf baan ahaa Caano oo kale'e
Markii xigey Casaan Dhiigahoo Cad iyo Jiidh yeeshay
Markii xigey Calooshii Haween yaan ku cararaayey

Markii xigey caweys baan dhashoo Cige la ii bixiyey
Markii xigey culays hooyaday Cududahaan daashey
Markii xigey Cuudkaan ceshoo caawiye ahaaday''')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Gabayo App"),
        backgroundColor: Colors.pink,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: gabayo.length,
        itemBuilder: (context, index) => AbwaanCard(
          abwaan: gabayo[index],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("AHMED MOHAMED"),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [Text("61762726727")],
                      ),
                    ),
                    actions: [TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text("ok "))],
                  ));
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.call),
      ),
    );
  }
}

class AbwaanCard extends StatelessWidget {
  const AbwaanCard({
    Key? key,
    required this.abwaan,
  }) : super(key: key);
  final AbwaanModel abwaan;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detail(abwaan: abwaan),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                ),
                child: Image.asset(
                  abwaan.image ?? "",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      abwaan.name ?? "",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      abwaan.gabay ?? "",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Visibility(
                    visible: abwaan.isHot ?? false,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.checkmark_circle),
                          SizedBox(
                            width: 12,
                          ),
                          Text("🔥")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
