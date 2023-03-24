import 'package:flutter/material.dart';

class RestauranteCard extends StatefulWidget {
  const RestauranteCard({
    super.key,
    required this.url,
    required this.decription,
    required this.precio,
    //required this.descuento
  });

  final String url;
  final String decription;
  final String precio;
  // final String descuento;

  @override
  State<RestauranteCard> createState() => _RestauranteCardState();
}

class _RestauranteCardState extends State<RestauranteCard> {
  int porcentaje = 20;
  bool showErrorText = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Positioned(
                left: 30,
                top: 10,
                child: Card(
                  color: Colors.red,
                  child: Text(
                    '%$porcentaje',
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  widget.url,
                  height: 200,
                  width: double.maxFinite,
                ),
              ),
            ],
          ),
          Text(
            widget.precio,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.all(10),
            child: Text(
              widget.decription,
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        porcentaje++;
                        showErrorText = false;
                      });
                    },
                    child: Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        porcentaje = 0;
                        showErrorText = false;
                      });
                    },
                    child: Text('Limpiar')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (porcentaje == 0) {
                          showErrorText = true;
                          return;
                        }
                        porcentaje--;
                      });
                    },
                    child: Icon(Icons.remove_outlined))
              ],
            ),
          ),
          if (showErrorText)
            const Text(
              'No puede tener menor en el descuento',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
        ],
      ),
    );
  }
}
