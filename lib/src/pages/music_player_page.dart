import 'package:flutter/material.dart';

import '../helpers/helpers.dart';
import '/src/widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {
  const MusicPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          ImageDiskDuration(),
          TitlePlay(),
          Expanded(
            child: Lyrics(),
          ),
        ],
      ),
    );
  }
}

class Lyrics extends StatelessWidget {
  const Lyrics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final lyrics = getLyrics();
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListWheelScrollView(
        physics: const FixedExtentScrollPhysics(),
        itemExtent: double.infinity,
        diameterRatio: 1.5,
        useMagnifier: true,
        children: lyrics.map(
          (linea) => Text(
            linea,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ).toList(),
      ),
    );
  }
}

class TitlePlay extends StatelessWidget {
  const TitlePlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'Profugos',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              Text(
                '- Soda Stereo -',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {},
            elevation: 0,
            highlightElevation: 0,
            backgroundColor: const Color(0xfff7e600),
            shape: const StadiumBorder(),
            child: const Icon(
              Icons.play_arrow,
              color: Color(0xff1c1c25),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageDiskDuration extends StatelessWidget {
  const ImageDiskDuration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      margin: const EdgeInsets.only(top: 70),
      child: const Row(
        children: [
          ProgressBar(),
          Expanded(child: SizedBox()),
          ImageDisk(),
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Text(
            '00:00',
            style: TextStyle(
              color: Colors.white.withOpacity(0.4),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: 3,
                height: 230,
                color: Colors.white.withOpacity(0.1),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 3,
                  height: 100,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '00:00',
            style: TextStyle(
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageDisk extends StatelessWidget {
  const ImageDisk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color(0xff484750),
            Color(0xff1e1c24),
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/soda.jpg',
              ),
            ),
            Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: const Color(0xff1c1c25),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
