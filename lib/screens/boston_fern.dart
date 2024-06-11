import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BostonFern extends StatefulWidget {
  const BostonFern({super.key});

  @override
  State<BostonFern> createState() {
    return _BostonFernState();
  }
}

class _BostonFernState extends State<BostonFern> {
  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Boston Fern',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 51, 112, 53),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: size.width,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: Color.fromARGB(175, 51, 113, 53),
                  ),
                ],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/boston-fern-2.jpg',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'The Boston fern, is a popular fern species admired for its graceful fronds and air-purifying qualities. This lush and vibrant plant is native to tropical regions and is cherished for its ornamental value in indoor spaces.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Botanical Name: Nephrolepis exaltata',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 35, 122, 38)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Light Requirements:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        ' - Boston ferns thrive in bright, indirect light, making them ideal for locations with filtered sunlight or partially shaded areas.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - While they can tolerate some direct sunlight in the morning or late afternoon, prolonged exposure to intense sunlight may scorch their delicate fronds.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Watering:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        ' - Keep the soil consistently moist but not waterlogged, as Boston ferns prefer moderately moist conditions.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Water thoroughly when the top inch of soil feels dry to the touch, ensuring adequate hydration for healthy growth.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Temperature:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        ' - Boston ferns prefer moderate temperatures ranging between 60°F to 75°F (15°C to 24°C), making them well-suited for indoor environments.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Avoid placing them near drafty areas or heating vents, as sudden temperature fluctuations can stress the plant.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Humidity:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        ' - High humidity is crucial for Boston ferns to thrive, mimicking their native tropical habitat.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Provide ample humidity by misting the fronds regularly or placing the plant on a pebble tray filled with water to maintain moisture around the foliage.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Propagation:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        ' - Boston ferns can be propagated through division or spore propagation.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Divide mature plants by separating the rhizomes and planting them in separate containers, ensuring each division has both roots and fronds for successful growth.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Benefits:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        ' - Boston ferns are renowned for their air-purifying properties, effectively removing pollutants such as formaldehyde, xylene, and toluene from indoor air.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Their lush foliage adds a touch of greenery to indoor spaces, promoting a sense of tranquility and well-being.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Maintenance:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        " - Regularly remove dead or yellowing fronds to encourage new growth and maintain the plant's aesthetic appeal.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " - Monitor for pests such as aphids or spider mites, and treat promptly with organic insecticidal soap or neem oil to prevent infestations.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
