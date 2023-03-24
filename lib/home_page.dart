import 'package:flutter/material.dart';
import 'package:trabajo2_asesoria/widgets/restaurante_card.dart';

final listurl = [
  'https://www.kindpng.com/picc/m/22-224050_plato-placa-comida-almuerzo-saludable-deliciosa-diet-2018.png',
  'https://www.italiannis.com.mx/wp-content/uploads/2021/08/fettuccini-alfredo-italiannis.png',
  'https://media.istockphoto.com/id/1141197352/es/foto/chica-que-sostiene-vegano-detox-taz%C3%B3n-de-buda-con-quinoa-micro-greens-aguacate-naranja-de.jpg?b=1&s=170667a&w=0&k=20&c=gdAZslUqXokaAeSyaDVlQl6ALGEYkssQc8wSh62UoRk=',
  'https://elasador.com.mx/wp-content/themes/asadorLFS/img/home3.png'
];

final listurl2 = [
  'https://s3-sa-east-1.amazonaws.com/api-lac.production/images/discount_images/2023-02-08/a59056817b0b7aafe35baa9f48d7c74a.png',
  'https://static.theclinic.cl/media/2022/05/23-195554_bztc_dia-del-completo.png',
  'https://www.fmdos.cl/wp-content/uploads/2022/05/Pedro-juan-y-diego.jpg',
  'https://dhb3yazwboecu.cloudfront.net/997//banner-violife-descuento.png'
];

final listext = [
  'Saciar el gusanillo viajero para este verano no es nada fácil pero, afortunadamente, la cocina puede venir en nuestra ayuda. Perfectas como entrante pero también como plato a compartir o, por qué no, como principal como una ensalada de alubias o judías blancas, las ensaladas nos han demostrado que son sanas, sabrosas y pueden ser muy equilibradas.',
  'Este espagueti también se conoce simplemente como "Espagueti rojo". A menudo se sirve como acompañamiento de carne, pollo o pescado, y también es una guarnición popular durante las festividades de Navidad y fín de año, donde se puede servir junto con una porción de pavo o una rebanada de pierna de cerdo al horno.',
  'El nombre de la ensalada César: seguramente habrás escuchado de esta ensalada alguna vez. Se debe a su creador, el Chef César Cardini, del restaurante Cardini en Tijuana, México. La ensalada griega no la conocen los griegos: se le llama así a la ensalada de ingredientes secos, sin embargo, en Grecia no la preparan. Sólo se come con tenedor: según la etiqueta, sólo necesitas un tenedor especial para comer ensalada. Sin embargo, esta costumbre se debe a que antes los cuchillos se fabricaban con un material que se deterioraba con el vinagre utilizado en las ensaladas, y a pesar de que hoy hay cuchillos resistentes, la costumbre se ha quedado hasta nuestros días. Hidratación segura: al componerse, en su mayoría, de alimentos frescos, las ensaladas refrescan e hidratan en un 90%. Te damos más información para que te animes a preparar tus ensaladas saludables. ',
  'Para disfrutar una deliciosa hamburguesa no se necesitan pretextos. Sin embargo, si lo que quieres es un empujoncito, puedes celebrar el Día de la Hamburguesa probando una (¡o todas!) de las propuestas que te ofrecemos en esta lista. Estas son, para nosotros, las mejores hamburguesas de Monterrey.'
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.place)),
        centerTitle: true,
        title: const Text('AGUASCALIENTES'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.search),
                Text(
                  'search',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            // margin: const EdgeInsets.all(5),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listurl.length,
              //  scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.network(
                    listurl2[index],
                    height: 120,
                    width: 120,
                  ),
                );
              },
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: listurl.length,
                itemBuilder: (BuildContext context, int index) {
                  return RestauranteCard(
                    url: listurl[index],
                    decription: listext[index],
                    precio: '\$ 150',
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
        ],
      ),
    );
  }
}
