// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      // Funciona parecido a una coleccion de rows
      children: [
        TableRow(// tods los tablerow deben tener la misma cantidad de hijos
            children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
            text: 'Transport',
          ),
        ]),
        TableRow(// tods los tablerow deben tener la misma cantidad de hijos
            children: [
          _SingleCard(
            color: Colors.orange,
            icon: Icons.abc,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.red,
            icon: Icons.people,
            text: 'Public',
          ),
        ]),
        TableRow(// tods los tablerow deben tener la misma cantidad de hijos
            children: [
          _SingleCard(
            color: Colors.purple,
            icon: Icons.catching_pokemon,
            text: 'Pokemon',
          ),
          _SingleCard(
            color: Colors.green.shade300,
            icon: Icons.cake_rounded,
            text: 'Birthday',
          ),
        ]),
        TableRow(// tods los tablerow deben tener la misma cantidad de hijos
            children: [
          _SingleCard(
            color: Colors.amber.shade300,
            icon: Icons.computer,
            text: 'Tech',
          ),
          _SingleCard(
            color: Colors.purple,
            icon: Icons.media_bluetooth_on_sharp,
            text: 'Devices',
          ),
        ]),
        TableRow(// tods los tablerow deben tener la misma cantidad de hijos
            children: [
          _SingleCard(
            color: Colors.tealAccent.shade200,
            icon: Icons.headphones,
            text: 'Music',
          ),
          _SingleCard(
            color: Colors.cyan.shade300,
            icon: Icons.table_bar,
            text: 'Places',
          ),
        ]),
        // TableRow(// tods los tablerow deben tener la misma cantidad de hijos
        //     children: [
        //   _SingleCard(),
        //   _SingleCard(),
        // ]),
        // TableRow(// tods los tablerow deben tener la misma cantidad de hijos
        //     children: [
        //   _SingleCard(),
        //   _SingleCard(),
        // ]),
        // TableRow(// tods los tablerow deben tener la misma cantidad de hijos
        //     children: [
        //   _SingleCard(),
        //   _SingleCard(),
        // ]),
        // TableRow(// tods los tablerow deben tener la misma cantidad de hijos
        //     children: [
        //   _SingleCard(),
        //   _SingleCard(),
        // ]),
        // TableRow(// tods los tablerow deben tener la misma cantidad de hijos
        //     children: [
        //   _SingleCard(),
        //   _SingleCard(),
        // ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  // _SingleCard({super.key});

  final IconData icon;
  final Color color;
  final String text;

  static var boxDecoration = BoxDecoration(
    color: const Color.fromRGBO(62, 66, 107, 0.7),
    borderRadius: BorderRadius.circular(20),
  );

  // ignore: prefer_const_constructors_in_immutables
  _SingleCard({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 25, //radius size
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: color, fontSize: 18),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({ required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        // Cortar cualquier coa que se salga de su contenedor
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 160,
            // margin: const EdgeInsets.all(15),
            decoration: _SingleCard.boxDecoration,
            child: child,
          ),
        ),
      ),
    );
  }
}
