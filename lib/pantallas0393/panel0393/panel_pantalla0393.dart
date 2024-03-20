import 'package:flutter/material.dart';
import 'package:moreno0393/pantallas0393/panel0393/widgets0393/itemcomputo.dart';

class PanelPantalla0393 extends StatelessWidget {
  const PanelPantalla0393({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff10297a),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Color(0xfff2f2f2),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 13),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/MorenoIA128/Img_IOS/main/icono.png"),
            ),
          )
        ],
        title: const Text(
          'Inovatech Moreno0393',
          style: TextStyle(color: Colors.white, fontSize: 21),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xfff4f4f4),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Que quieres ver",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Color(0xff0e163a))),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://raw.githubusercontent.com/MorenoIA128/Img_IOS/main/setup.jpg"),
            )),
          ),
          ListTile(
            title: const Text("Top Computadoras"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: const Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const Itemcomputo()],
            ),
          )
        ],
      ),
    );
  }
}
