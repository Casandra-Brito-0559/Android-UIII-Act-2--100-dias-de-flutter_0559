import 'package:flutter/material.dart';
import 'Model/user_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo con imagen adaptada completamente (no recortada)
          Positioned(
            top: -79,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.network(
                  "https://raw.githubusercontent.com/Nabinji/100-DaysOf-Futter/refs/heads/main/leaderboard/Images/leaderboard.png",
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 25,
                  child: Image.network(
                    "https://raw.githubusercontent.com/Nabinji/100-DaysOf-Futter/refs/heads/main/leaderboard/Images/line.png",
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),

          // Título centrado con ícono a la izquierda
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.emoji_events, color: Colors.orange, size: 24),
                  SizedBox(width: 8),
                  Text(
                    "Top Autores",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),

          // Texto de duración
          const Positioned(
            top: 80,
            left: 20,
            child: Text(
              "Termina en 2d 23Horas",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ),

          // Podio superior
          // Podio superior personalizado
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            child: SizedBox(
              height:
                  180, // puedes ajustar este valor si hace falta más espacio
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // 2.º lugar (izquierda)
                  Positioned(
                    left: 30,
                    bottom: 20,
                    child: rank(
                      radius: 35,
                      height: 9,
                      image:
                          "https://hips.hearstapps.com/hmg-prod/images/h-16119920-677847822d881.jpg?crop=1.00xw:0.716xh;0,0.140xh&resize=1120:*",
                      name: "Rebecca Yarros",
                      point: "12323",
                    ),
                  ),
                  // 1.º lugar (centro)
                  Positioned(
                    bottom: 50,
                    left: MediaQuery.of(context).size.width / 2 - 50,
                    child: rank(
                      radius: 35,
                      height: 8,
                      image:
                          "https://raw.githubusercontent.com/Casandra-Brito-0559/Libreria_imagenes_app_flutter/refs/heads/main/Kyung-sook%2BShin.jpg",
                      name: "Kyung-sook Shin",
                      point: "23131",
                    ),
                  ),
                  // 3.º lugar (derecha)
                  Positioned(
                    right: 30,
                    bottom: 2,
                    child: rank(
                      radius: 35,
                      height: 9,
                      image:
                          "https://static.wikia.nocookie.net/trono-de-cristal/images/e/ea/Sarah-J-Maas_credit_Josh-Wasserman_300.jpg/revision/latest?cb=20140601023246&path-prefix=es",
                      name: "Sarah J. Maas",
                      point: "6878",
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Lista de usuarios
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.9,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: ListView.builder(
                itemCount: userItems.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 15),
                itemBuilder: (context, index) {
                  final items = userItems[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          items.rank,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 15),
                        CircleAvatar(
                          radius: 22,
                          backgroundImage: NetworkImage(items.image),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Text(
                            items.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.back_hand,
                                size: 16,
                                color: Color(0xFFFFBB00),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                items.point.toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column rank({
    required double radius,
    required double height,
    required String image,
    required String name,
    required String point,
  }) {
    return Column(
      children: [
        CircleAvatar(radius: radius, backgroundImage: NetworkImage(image)),
        SizedBox(height: height),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(height: height),
        Container(
          height: 25,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.back_hand, size: 14, color: Color(0xFFFFBB00)),
              const SizedBox(width: 5),
              Text(
                point,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
