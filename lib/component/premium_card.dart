import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(43, 43, 43, 1),
        borderRadius: BorderRadius.all(
            Radius.circular(20)
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Premium".toUpperCase(), style: const TextStyle(fontFamily: 'M PLUS Rounded 1c',color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              const Icon(Icons.star_outline_rounded, color: Colors.white, size: 20,),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Débloquez toutes nos options pour prendre le contrôle", style: TextStyle(fontFamily: 'M PLUS Rounded 1c',color: Colors.white, fontSize: 12),textAlign: TextAlign.center,),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
              onPressed: (){}, child: const Text("Bientôt Disponible !", style: TextStyle(fontFamily: 'M PLUS Rounded 1c',color: Color.fromRGBO(43, 43, 43, 1), fontSize: 14, fontWeight: FontWeight.bold))
          )
        ],
      ),
    );
  }
}
