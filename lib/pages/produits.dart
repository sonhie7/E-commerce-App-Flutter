
import 'package:flutter/material.dart';
import 'produits_detail.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        "name": "Monstera",
        "price": 120,
        "image": "images/monstera.jpg",
        "description": "Plante tropicale décorative pour intérieur",
        "isAsset": true,
      },
      {
        "name": "Cactus",
        "price": 60,
        "image": "images/cactus.jpeg",
        "description": "Plante résistante, facile à entretenir",
        "isAsset": true,
      },
      {
        "name": "Rose",
        "price": 80,
        "image": "images/rose.jpeg",
        "description": "Plante fleurie élégante pour jardin",
        "isAsset": true,
      },
      {
        "name": "Basilic",
        "price": 40,
        "image": "images/pot.jpg",
        "description": "Plante aromatique fraîche pour cuisine",
        "isAsset": true,
      },



      {
    "name": "Aloe Vera",
    "price": 70,
    "image": "images/aloe.png",
    "description": "Plante médicinale facile d’entretien",
    "isAsset": true,
  },
  {
    "name": "Lavande",
    "price": 55,
    "image": "images/lavande.png",
    "description": "Plante parfumée relaxante",
    "isAsset": true,
  },
  {
    "name": "Ficus",
    "price": 150,
    "image": "images/ficus.png",
    "description": "Plante décorative pour salon",
    "isAsset": true,
  },
  {
    "name": "Menthe",
    "price": 35,
    "image": "images/menthe.png",
    "description": "Plante aromatique rafraîchissante",
    "isAsset": true,
  },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Nos Plantes")),
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 15,
            runSpacing: 15,
            children: products.map((product) {
              return Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    width: 220,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // IMAGE OR EMOJI
                        product["isAsset"] == true
                            ? Image.asset(
                                product["image"] as String,
                                height: 80,
                              )
                            : Text(
                                product["image"] as String,
                                style: const TextStyle(fontSize: 40),
                              ),

                        const SizedBox(height: 10),

                        Text(
                          product["name"] as String,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 5),
                        Text("${product["price"]} DH"),
                        const SizedBox(height: 10),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
  ),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ProductDetailPage(product: product),
      ),
    );
  },
  child: const Text("Voir détails"),
),

                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
