import 'package:flutter/material.dart';

import 'detailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF6F6F6),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class TowerSite {
  final String location;
  final String siteID;
  final String distance;

  const TowerSite({
    required this.location,
    required this.siteID,
    required this.distance,
  });
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<TowerSite> towerSites = [
    const TowerSite(
        location: 'LARIKE',
        siteID: 'MLU0016',
        distance: '14230 Km'
    ),
    const TowerSite(
        location: 'TABUAH ELOK',
        siteID: 'KLB00615',
        distance: '12188 Km'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/logo.png", height: 40,),
        backgroundColor: const Color(0xFFF6F6F6),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: towerSites.length,
            itemBuilder: (context, index)  {
              final towerSite = towerSites[index];

              return Container(
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: ListTile(
                  title: Text(towerSite.location, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  subtitle: Text(towerSite.siteID, style: TextStyle(fontSize: 12)),
                  trailing: Text(towerSite.distance, style: TextStyle(fontSize: 10, color: Colors.black.withOpacity(.4))),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailPage(towerSite: towerSite)
                    ));
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}
