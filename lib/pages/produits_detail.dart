
import 'package:flutter/material.dart';
import 'confirmationPage.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text(product["name"].toString())),
      body: Center(
        child: Card(
          elevation: 8,
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: 500,
              child: Row(
                children: [
                  // IMAGE
                  Expanded(
                    child: Center(
                      child: product["isAsset"] == true
                          ? Image.asset(
                              product["image"].toString(),
                              height: 150,
                            )
                          : Text(
                              product["image"].toString(),
                              style: const TextStyle(fontSize: 100),
                            ),
                    ),
                  ),

                  // INFO
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product["name"].toString(),
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text("Prix : ${product["price"]} DH"),
                        const SizedBox(height: 10),
                        Text(product["description"].toString()),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const ConfirmationPage(),
                              ),
                            );
                          },
                          child: const Text("Commander"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
