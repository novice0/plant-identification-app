import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DevilsIvy extends StatefulWidget {
  const DevilsIvy({super.key});

  @override
  State<DevilsIvy> createState() {
    return _DevilsIvyState();
  }
}

class _DevilsIvyState extends State<DevilsIvy> {
  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Devil's Ivy",
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
                    'assets/images/devils-ivy-3.jpg',
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
                    "Devil's Ivy, is a popular and easy-to-care-for houseplant prized for its attractive trailing vines and air-purifying qualities. Originating from the Solomon Islands, this tropical plant has become a favorite among indoor gardeners due to its low maintenance and ability to thrive in a variety of conditions.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Botanical Name: Epipremnum aureum',
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
                        " - Devil's Ivy tolerates low to moderate light conditions, making it suitable for indoor spaces with limited natural light.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " - It thrives in bright, indirect light but can also adapt to low light environments, although growth may be slower.",
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
                        " - Water Devil's Ivy when the top inch of soil feels dry to the touch, typically every 1-2 weeks depending on environmental conditions.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Allow excess water to drain away freely, and avoid overwatering, as this can lead to root rot.',
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
                        " - Devil's Ivy prefers average to warm temperatures between 60-85°F (15-29°C) year-round.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Avoid exposing the plant to cold drafts or temperatures below 50°F (10°C), as it is sensitive to frost.',
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
                        " - This plant is adaptable to normal indoor humidity levels but benefits from occasional misting or placement near a humidifier, especially in dry environments.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " - Higher humidity levels can promote lush growth and prevent leaf browning.",
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
                        " - Devil's Ivy can be easily propagated through stem cuttings placed in water or directly planted in soil.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Simply cut a healthy stem below a leaf node and place it in water or moist soil, and roots will develop within a few weeks.',
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
                        " - Devil's Ivy is known for its air-purifying qualities, helping to remove toxins such as formaldehyde, benzene, and xylene from indoor air.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Its trailing vines make it an excellent choice for hanging baskets or as a decorative accent in various indoor settings.',
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
                        ' - Regularly inspect the plant for signs of pests such as spider mites or mealybugs, and treat as necessary with insecticidal soap.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " - Prune Devil's Ivy as needed to control its size and shape, removing any yellow or damaged leaves to promote healthy growth.",
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
