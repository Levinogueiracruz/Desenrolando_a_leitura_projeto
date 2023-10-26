import 'package:desenrolando_a_leitura/view/inicio.dart';
import 'package:flutter/material.dart';


class leituraView extends StatelessWidget {
  const leituraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menu(context, "Leitura"),
      endDrawer: menuVertical(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 600,
              color: Colors.grey[200],
              child: Center(
                child: Text(
                  'Quatro ou cinco cavalheiros debatiam, uma noite, várias questões de alta transcendência, sem que a disparidade dos votos trouxesse a menor alteração aos espíritos. A casa ficava no morro de Santa Teresa, a sala era pequena, alumiada a velas, cuja luz fundia-se misteriosamente com o luar que vinha de fora. Entre a cidade, com as suas agitações e aventuras, e o céu, em que as estrelas pestanejavam, através de uma atmosfera límpida e sossegada, estavam os nossos quatro ou cinco investigadores de coisas metafísicas, resolvendo amigavelmente os mais árduos problemas do universo. Por que quatro ou cinco? Rigorosamente eram quatro os que falavam; mas, além deles, havia na sala um quinto personagem, calado, pensando, cochilando, cuja espórtula no debate não passava de um ou outro resmungo de aprovação. Esse homem tinha a mesma idade dos companheiros, entre quarenta e cinqüenta anos, era provinciano, capitalista, inteligente, não sem instrução, e, ao que parece, astuto e cáustico. Não discutia nunca; e defendia-se da abstenção com um paradoxo, dizendo que a discussão é a forma polida do instinto batalhador, que jaz no homem, como uma herança bestial; e acrescentava que os serafins e os querubins não controvertiam nada, e, aliás, eram a perfeição espiritual e',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {

                  },
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {

                  },
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
