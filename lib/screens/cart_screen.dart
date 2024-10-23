import 'package:flutter/material.dart';
import '../widgets/custom_header.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomHeader(isLoggedIn: false) ,
      body: Center(
        child: Text('Carrito de compras'),
      ),
    );
  }
}
