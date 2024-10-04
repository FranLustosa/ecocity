import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 107, 175, 19),
        centerTitle: true,
        title: Image.asset(
          'assets/logohome.png', // Caminho da imagem do logo
          height: 40, // Altura do logo
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Ação para notificações
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Explore nossos serviços',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                children: [
                  serviceCard('Coleta Seletiva', 'assets/coleta_seletiva.png'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ScheduleCollectionScreen(),
                        ),
                      );
                    },
                    child: serviceCard(
                        'Agendar Coleta', 'assets/agendar_coleta.png'),
                  ),
                  serviceCard(
                      'Descarte Correto', 'assets/descarte_correto.png'),
                  serviceCard('Reciclagem', 'assets/reciclagem.png'),
                  GridTile(
                    child: serviceCard(
                      'Programa Iniciativa EcoCity',
                      'assets/incentiva_ecocity.png',
                      isWide: true,
                    ),
                    footer: const SizedBox(height: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'Dúvidas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Sair',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 107, 175, 19),
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const RegisterScreen(),
              ));
              break;
            case 1:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
              break;
            case 2:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const RegisterScreen(),
              ));
              break;
          }
        },
      ),
    );
  }
}

Widget serviceCard(String title, String imagePath, {bool isWide = false}) {
  return Container(
    width: isWide ? double.infinity : null,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          const Color.fromARGB(255, 102, 102, 102).withOpacity(0.5),
          BlendMode.darken,
        ),
      ),
    ),
    child: Center(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
