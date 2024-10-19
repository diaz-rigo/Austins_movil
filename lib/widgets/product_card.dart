import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

class ProductCard extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String imageUrl;
  final bool isHighlighted;

  const ProductCard({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(isHighlighted ? 25.0 : 15.0),
        child: Stack(
          children: [
            Card(
              elevation: isHighlighted ? 20.0 : 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(isHighlighted ? 30.0 : 20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(productId: id),
                        ),
                      );
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(isHighlighted ? 30.0 : 20.0),
                          child: Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                            height: isHighlighted ? 280.0 : 260.0,
                            // AQUI AFECTA EL TAMAÑO 

                            width: double.infinity,
                            // errorBuilder: (context, error, stackTrace) {
                            //   return const Center(
                            //     child: Icon(Icons.error, size: 50.0),
                            //   );
                            // },
                          ),
                        ),
                        if (isHighlighted)
                          Positioned(
                            top: 10.0,
                            right: 10.0,
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Text(
                                'Producto Destacado',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          // AQUI TAMBIEN AFECTA ERROR TAMAÑO
                          style: TextStyle(
                            fontSize: isHighlighted ? 24.0 : 20.0,
                            // fontWeight: FontWeight.bold,
                            color: Colors.brown,
                          ),
                          maxLines: 1,
                          // overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 12.0),
                        Text(
                          '\$$price',
                          style: TextStyle(
                            fontSize: isHighlighted ? 22.0 : 18.0,
                            color: const Color.fromARGB(255, 255, 68, 0),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 20.0,
              child: FloatingActionButton(
                onPressed: () {
                  print('Producto $id agregado al carrito');
                },
                backgroundColor: Colors.orange,
                child: const Icon(Icons.add_shopping_cart),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
