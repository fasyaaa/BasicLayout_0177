import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Today',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '28°C',
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w400,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 8),
            const SizedBox(
              width: 250,
              child: Divider(thickness: 1, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            const Text(
              'Sunny',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit, color: Colors.blue),
                SizedBox(width: 5),
                Text(
                  '5 km/h',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(39, 57, 28, 0.5), //color using rgba
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, //mulai dari start (kiri)
                  children: [
                    const Text(
                      'Next 7 days',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          [
                            'Now',
                            '17.00',
                            '20.00',
                            '23.00',
                          ].map((time) => WeatherColumn(time: time)).toList(),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Developed by: Muhammad Adifa Firmansyah',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherColumn extends StatelessWidget {
  final String time;
  const WeatherColumn({required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(time, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8,),
        const Icon(Icons.ac_unit, color: Colors.blue),
        const SizedBox(height: 8,),
        const Text('28°C', style: TextStyle(fontSize: 16, color: Colors.blue),),
        const SizedBox(height: 8,),
        const Column(
          children: [
            Icon(IconData(0xf07da, fontFamily: 'MaterialIcons'), color: Color.fromARGB(255, 197, 53, 43)), //panggil icon yang tidak ada di default
            SizedBox(width: 5),
            Text('10 km/h', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 197, 53, 43),
                  ),)
          ],
        ),
        const SizedBox(height: 8),
        const Icon(Icons.umbrella),
        const SizedBox(height: 8),
        const Text('0%', style: TextStyle(fontSize: 14, color: Colors.black),)
      ],
    );
  }
}
