import 'package:flutter/material.dart';

class ZzPlant extends StatefulWidget {
  const ZzPlant({super.key});

  @override
  State<ZzPlant> createState() {
    return _ZzPlantState();
  }
}

class _ZzPlantState extends State<ZzPlant> {
  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ZZ Plant',
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
                    'assets/images/zz-plant-2.jpg',
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
                    'The ZZ plant, also known as the Zanzibar gem, is a popular indoor plant originating from eastern Africa. This resilient plant has gained popularity worldwide as a decorative houseplant due to its ability to thrive in a variety of indoor conditions.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Botanical Name: Zamioculcas zamiifolia',
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
                        ' - ZZ plants prefer bright, indirect light but can tolerate low light conditions.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Avoid placing them in direct sunlight as it can scorch their leaves.',
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
                        ' - ZZ plants have low water needs and are susceptible to root rot if overwatered.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Allow the soil to dry out between waterings, and water sparingly during the growing season.',
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
                        ' - ZZ plants thrive in average room temperatures between 65°F to 75°F (18°C to 24°C).',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - They can tolerate slightly cooler temperatures but are sensitive to frost and should be protected from cold drafts.',
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
                        ' - ZZ plants are adaptable to normal indoor humidity levels and do not require high humidity.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - However, occasional misting or placing the plant on a humidity tray can benefit its overall health, especially in dry environments.',
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
                        ' - ZZ plants can be propagated through leaf cuttings or division of rhizomes.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - Leaf cuttings should be allowed to callus before planting in well-draining soil, while rhizome division involves separating healthy rhizomes and planting them in individual pots.',
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
                        ' - ZZ plants are known for their air-purifying qualities, helping to remove toxins such as formaldehyde and benzene from indoor air.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' - They are also praised for their ability to thrive in low-light conditions, making them suitable for offices, apartments, and other spaces with limited natural light.',
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
                        ' - ZZ plants require minimal maintenance and are relatively pest-resistant.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " - Prune away any yellow or dead leaves to maintain plant health, and periodically wipe the leaves with a damp cloth to remove dust and improve their appearance.",
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
