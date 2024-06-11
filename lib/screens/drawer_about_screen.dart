import 'package:flutter/material.dart';

class DrawerAboutScreen extends StatefulWidget {
  const DrawerAboutScreen({super.key});

  @override
  State<DrawerAboutScreen> createState() {
    return _DrawerAboutScreenState();
  }
}

class _DrawerAboutScreenState extends State<DrawerAboutScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'About Us',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 67, 25),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/wallpaper-8.jpg',
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 731, // for Iphone 14 only
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.green,
                                elevation: 10,
                                shape: const CircleBorder(),
                              ),
                              onPressed: () {},
                              child: Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/admin-4.jpeg'),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            const Text(
                              'Atharv Munot',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.green,
                                elevation: 10,
                                shape: const CircleBorder(),
                              ),
                              onPressed: () {},
                              child: Container(
                                width: 120.0,
                                height: 120.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/admin-3.HEIC'),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              'Chinmay Mulmule',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

/*
appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'About',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 67, 25),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/wallpaper-8.jpg',
              fit: BoxFit.cover,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 731, // for Iphone 14 only
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(),
                        Row(),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    
*/


/*
Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => setState(() => _margin += 50),
              child: const Text('update margin'),
            )
          ],
        ),
      ),
    );
*/