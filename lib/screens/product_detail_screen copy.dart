// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class ProductDetailScreen extends StatefulWidget {
//   final String productId;

//   const ProductDetailScreen({super.key, required this.productId});

//   @override
//   _ProductDetailScreenState createState() => _ProductDetailScreenState();
// }

// class _ProductDetailScreenState extends State<ProductDetailScreen> {
//   Map<String, dynamic>? product;
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     fetchProductDetails();
//   }

//   Future<void> fetchProductDetails() async {
//     final url = Uri.parse('https://austin-b.onrender.com/product/${widget.productId}');
//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       setState(() {
//         product = json.decode(response.body);
//         isLoading = false;
//       });
//     } else {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Detalles del Producto"),
//       ),
//       body: isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : product == null
//               ? const Center(child: Text("No se pudo cargar el producto"))
//               : SingleChildScrollView(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         product!['name'],
//                         style: const TextStyle(
//                           fontSize: 28.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 16.0),
//                       Center(
//                         child: Image.network(
//                           product!['images'][0],
//                           height: 250,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       const SizedBox(height: 16.0),
//                       const Text(
//                         'Descripción:',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         product!['description'],
//                         style: const TextStyle(fontSize: 16.0),
//                       ),
//                       const SizedBox(height: 16.0),
//                       Text(
//                         'Precio: \$${product!['price']}',
//                         style: const TextStyle(fontSize: 22.0, color: Colors.green),
//                       ),
//                       const SizedBox(height: 16.0),
//                       Text(
//                         'Categoría: ${product!['category']}',
//                         style: const TextStyle(fontSize: 18.0, color: Colors.grey),
//                       ),
//                       const SizedBox(height: 16.0),
//                       if (product!['isVegetarian'])
//                         Chip(
//                           label: const Text('Vegetariano'),
//                           backgroundColor: Colors.green[100],
//                         ),
//                       if (product!['isGlutenFree'])
//                         Chip(
//                           label: const Text('Sin Gluten'),
//                           backgroundColor: Colors.orange[100],
//                         ),
//                       const SizedBox(height: 16.0),
//                       const Text(
//                         'Ingredientes:',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         product!['ingredients'].join(', '),
//                         style: const TextStyle(fontSize: 16.0),
//                       ),
//                       const SizedBox(height: 16.0),
//                       const Text(
//                         'Alérgenos:',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         product!['allergens'].join(', '),
//                         style: const TextStyle(fontSize: 16.0),
//                       ),
//                       const SizedBox(height: 24.0),
//                       ElevatedButton(
//                         onPressed: () {
//                           // Acción para agregar al carrito
//                         },
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(vertical: 16.0),
//                           textStyle: const TextStyle(fontSize: 18.0),
//                           backgroundColor: Colors.orange,
//                         ),
//                         child: Text('Agregar al Carrito'),
//                       ),
//                     ],
//                   ),
//                 ),
//     );
//   }
// }
 