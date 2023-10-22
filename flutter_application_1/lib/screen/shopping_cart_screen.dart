import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/productos.dart';
// Importe sus modelos y lógica de negocio aquí

class ShoppingCartScreen extends StatefulWidget {
  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  // Esta sería su lista de productos en el carrito, probablemente querría manejar esto en un provider o state manager
  List<Listado> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
        backgroundColor:
            Color.fromARGB(255, 162, 156, 205), // color del tema de su app
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];

          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Image.network(
                  item.productImage), // Asumiendo imágenes en línea
              title: Text(item.productName),
              subtitle: Text('\$${item.productPrice}'),
              trailing: IconButton(
                icon: Icon(Icons.remove_shopping_cart),
                onPressed: () {
                  setState(() {
                    cartItems.removeAt(index); // Quitar producto del carrito
                    // Aquí también podría querer actualizar el estado global del carrito en su aplicación
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Procesar la compra aquí
          // Esta función debería comprobar el stock, enviar un correo electrónico, manejar errores, etc.
          _processPurchase();
        },
        label: Text('Comprar'),
        icon: Icon(Icons.payment),
        backgroundColor:
            Color.fromARGB(255, 162, 156, 205), // color del tema de su app
      ),
    );
  }

  void _processPurchase() {
    // 1. Verificar disponibilidad de stock para todos los productos en el carrito
    // 2. Si todo está disponible, proceder a realizar la compra

    // NOTA: Este proceso depende de la lógica de su negocio y de cómo esté manejando el stock y las transacciones en su aplicación.
  }
}
//Quitar productos, Comprar (En este proceso deben revisar el
//stock disponible, si hay stock proceder a realizar la compra, si no hay stock mostrar un mensaje de error) y el botón de regresar a la pantalla anterior.
// Path: flutter_application_1/lib/screen/shopping_cart_screen.dart
// Compare this snippet from flutter_application_1/lib/screen/shopping_cart_screen.dart: