import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          const Image(image: AssetImage('assets/landscape.png')),
          
          // Titulo
          const Title(),

          //Button section
          const ButtonSection(),

          // Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child:  const Text('Dolore reprehenderit fugiat ullamco velit deserunt eiusmod fugiat reprehenderit aliqua amet do ipsum. Dolore tempor id officia excepteur. Dolore aliqua id pariatur exercitation elit eiusmod. Id quis elit consectetur velit qui enim tempor.Lorem non ex qui ullamco fugiat qui voluptate exercitation velit laborum do non. Nulla aliquip anim excepteur cupidatat. Exercitation nostrud occaecat amet proident ad non sit consequat tempor. Nostrud officia duis incididunt irure quis aliquip.')
          )
        ],
      ),
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start, // para alinear los elementos de manera horizontal
            children: [
              Text('Est duis veniam laborum esse.', style: TextStyle( fontWeight: FontWeight.bold),),
              Text('Adipisicing Lorem eiusmod.', style: TextStyle( color: Colors.black45),)
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Expanded(child: Container()),
          ButtonsColumn(icon: Icons.call, description: 'CALL',),
          // Expanded(child: Container()),
          ButtonsColumn(icon: Icons.location_on, description: 'ROUTE',),
          // Expanded(child: Container()),
          ButtonsColumn(icon: Icons.share, description: 'SHARE',),
          // Expanded(child: Container()),
        ],
      ),
    );
  }
}

class ButtonsColumn extends StatelessWidget {
  IconData icon;
  String description;
   ButtonsColumn({
    required this.icon,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon,color: Colors.blue[700]),
          Text(description, style: TextStyle(color: Colors.blue[700]),)
        ],
      ),
    );
  }
}