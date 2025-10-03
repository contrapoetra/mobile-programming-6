import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Echo of My Shadow'),
      ),
      body: Column(
        children: [
          Flexible(fit: FlexFit.tight, flex: 12, child: viewer()),
          Expanded(flex: 2, child: controlBar(Colors.black54, 350, 'Expanded')),
        ],
      ),
    );
  }

  Container viewer() {
    late final AnimationController _controller = AnimationController(
      duration: Duration(milliseconds: 5000),
      vsync: this,
    )..repeat(reverse: false);

    late final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );

    return Container(
      alignment: const Alignment(0.0, 0.0),
      child: RotationTransition(
        turns: _animation,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10000),
          child: Image.asset('assets/images/cover.jpg'),
        ),
      ),
    );
  }

  Container controlBar(Color warna, double tinggi, String teks) {
    return Container(
      width: double.infinity,
      height: tinggi,
      color: warna,
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      alignment: const Alignment(0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          controlButtons('shuffle', 30, 1),
          controlButtons('skip_previous', 30, 1),
          controlButtons('play_circle_fill', 70, 2),
          controlButtons('skip_next', 30, 1),
          controlButtons('repeat', 30, 1),
        ],
      ),
    );
  }

  Flexible controlButtons(String type, double size, int flex) {
    IconData icon;
    switch (type) {
      case 'shuffle':
        icon = Icons.shuffle;
        break;
      case 'skip_previous':
        icon = Icons.skip_previous;
        break;
      case 'play_circle_fill':
        icon = Icons.play_circle_fill;
        break;
      case 'skip_next':
        icon = Icons.skip_next;
        break;
      case 'repeat':
        icon = Icons.repeat;
        break;
      default:
        icon = Icons.error;
    }
    return Flexible(
      flex: flex,
      child: Icon(icon, size: size),
    );
  }
}

class KotakBiruJempolKecil extends StatelessWidget {
  const KotakBiruJempolKecil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(Icons.thumb_up, color: Colors.white, size: 40),
    );
  }
}
