import 'package:btj_slicing_ui/main.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final TowerSite towerSite;

  const DetailPage({super.key, required this.towerSite});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFFF6F6F6),
      actions: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.clear))
      ],
      title: Image.asset("assets/logo.png", height: 40,),
    ),
    body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: const Color(0xFF2C3280),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(towerSite.location, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                            Text('(-3.70379, 127.92553)', style: TextStyle(fontSize: 10, color: Colors.white.withOpacity(.5) )),
                            const SizedBox(height: 8),
                            Text('Site Real ID', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.5))),
                            Text(towerSite.siteID, style: TextStyle(fontSize: 12, color: Colors.white)),
                          ],
                        )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Provinsi', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.5))),
                        const Text('MALUKU', style: TextStyle(fontSize: 12, color: Colors.white)),
                        const SizedBox(height: 8),

                        Text('Kabupaten', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.5))),
                        const Text('MALUKU TENGAH', style: TextStyle(fontSize: 12, color: Colors.white)),
                        const SizedBox(height: 8),

                        Text('Kelurahan', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white.withOpacity(.5))),
                        const Text('LARIKE', style: TextStyle(fontSize: 12, color: Colors.white)),
                        const SizedBox(height: 8),
                      ],
                    )
                  ],
                ),
              ),

              const Text('Project Information', style: TextStyle(fontSize: 14)),

              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Project Name', style: TextStyle (
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF999999)
                    )),
                    Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(top: 8, bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Penyediaan Infrastruktur Pendukung Base Transceiver Station (BTS) 4G dan Infrastruktur Pendukung',
                                      style: TextStyle(fontSize: 12)
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    ),

                    const Text('Detail', style: TextStyle (
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF999999)
                    )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Vendor / Mitra',
                                      style: TextStyle(fontSize: 12)
                                  )
                                ],
                              )
                          ),
                          Text('Kemitraan FH-TI-MTD', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Scope of work', style: TextStyle(fontSize: 12))
                                ],
                              )
                          ),
                          Flexible(
                            child: Text(
                              'Tower Tubelar Triangle Guyed Mast 32 Height',
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8, bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Tanggal / Jam', style: TextStyle(fontSize: 12))
                                ],
                              )
                          ),
                          Text('12 /10/2023', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),

                    const Text('Site Information', style: TextStyle (
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF999999)
                    )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Site ID',
                                      style: TextStyle(fontSize: 12)
                                  )
                                ],
                              )
                          ),
                          Text('MLU0016', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8, bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Site Name',
                                      style: TextStyle(fontSize: 12)
                                  )
                                ],
                              )
                          ),
                          Text('LARIKE', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),

                    const Text('Site Address', style: TextStyle (
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF999999)
                    )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Provinsi',
                                      style: TextStyle(fontSize: 12)
                                  )
                                ],
                              )
                          ),
                          Text('MALUKU', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kecamatan',
                                      style: TextStyle(fontSize: 12)
                                  )
                                ],
                              )
                          ),
                          Text('MALUKU TENGAH', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kabupaten',
                                      style: TextStyle(fontSize: 12)
                                  )
                                ],
                              )
                          ),
                          Text('LEIHITU BARAT', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Kelurahan', style: TextStyle(fontSize: 12)
                                  )
                                ],
                              )
                          ),
                          Text('LARIKE', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8, bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('GPS Coordinate',
                                      style: TextStyle(fontSize: 12)
                                  )
                                ],
                              )
                          ),
                          Text('(-3.70379, 127.92553)', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),

                    const Text('Other Information', style: TextStyle (
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF999999)
                    )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Configuration', style: TextStyle(fontSize: 12))
                                ],
                              )
                          ),
                          Flexible(
                            child: Text(
                              'Tower_Konfig-23 (Tower Tubelar Triangle Guyed Mast 32 Height)',
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
        ),
      ),
    )
  );

}
