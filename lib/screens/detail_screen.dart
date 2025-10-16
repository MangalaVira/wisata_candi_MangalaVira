import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

//pake stl, langsung jadi semua
class DetailScreen extends StatelessWidget {
  final Candi candi; // panggil ini dulu baru bisa candi.imageAsset


  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // image utama
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              // tombol back kustom
            ],
          )
        ],
      ),
    );
  }
}
